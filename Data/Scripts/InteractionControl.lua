--This is rly fucking stupid. So for some unknown reason Raycast, or any other function that would work similarly to a Raycast (I most likely tried all of them), doesn't detect client objects (the one I spawn with fixed position to be more specific). I tried all configurations of different collision, tried setting Raycast to detect camera collision and all of that kind of stuff, nothing worked. Not sure if it's on all client objects or only ones that was spawned on runetime, doesn't rly matter. Only client objects I could detect was ones with Physics turned on. So after I've wasted few hours diving into this pile of shit, I've decided to come into a dark side and I just made a trigger that stay in front of a camera and works basically same as RaycastAll would do. Trigger also have cool plottwist - if you press pause in preview, to look how trigger behave from the side, to know that position and rotation is how it suppose to be, it'll reset rotation and position for it, so just trust that it works. So yeah, total dogshit, Raycast doesn't works so I use trigger instead. o7

--[[Event List--
Events.Broadcast("EquipItem",ItemName)
Events.Broadcast("BlockMovement",true/false) --blocks both movement and camera
Events.Broadcast("InteractionPress",ObjectReference) --ObjectReference refers to wich object I'm interacting with
Events.Broadcast("InteractionHold",ObjectReference) --ObjectReference refers to wich object I'm interacting with
Events.Broadcast("ReleaseInteraction")
Events.Broadcast("PlayerEquipmentChanged")  --To let interactables know that they need to update info.
Events.Broadcast("PickedItem",ObjectReference) --ObjectReference refers to wich object I picked up
Events.Broadcast("LookAtItem",true/false)    --To let object that I'm holding know that I'm looking on it

Events.Connect("BlockInteractions",EndTime) -- EndTime refers to when Interactions will be unblocked
]]
local API_ITEM_LIST = require(script:GetCustomProperty("API_ItemList"))

local OUTLINE = script:GetCustomProperty("Outline"):WaitForObject()
local TRIGGER = script:GetCustomProperty("Trigger"):WaitForObject()
local DEPTH_OF_FIELD = script:GetCustomProperty("Depth of Field"):WaitForObject()
local MOVEMENT_CONTROL = script:GetCustomProperty("MovementControl"):WaitForObject()

local InteractionsEnable=true
local BlockLMB=false
local HoldingItem=nil
local LookingAtItem=false
local TargetObject=nil
local InteractionHold=false
-------------Detecting what am I looking at and holding item in front of player--------------
function Tick()
    local player=Game.GetLocalPlayer()
    local Qua=Quaternion.New(player:GetViewWorldRotation())
    if InteractionsEnable and BlockLMB==false then
        TRIGGER:SetWorldPosition(player:GetViewWorldPosition()+Qua:GetForwardVector()*150)
        TRIGGER:SetWorldRotation(Rotation.New(player:GetViewWorldRotation().x,player:GetViewWorldRotation().y,player:GetViewWorldRotation().z))
        local Target0=nil
        for _,obj in pairs(TRIGGER:GetOverlappingObjects()) do
            if obj:IsA("Trigger") then
                local Target=obj:FindTemplateRoot()
            
                if Target~=nil then
                    for name,info in pairs(API_ITEM_LIST) do
                        if name==Target.name and MOVEMENT_CONTROL:GetCustomProperty("PlayerCamID")==Target:GetCustomProperty("CameraID") then
                            if API_ITEM_LIST[name]["Category"]=="Interactable" then
                                if (Target:GetCustomProperty("NeedItem")=="" or (HoldingItem~=nil and HoldingItem.name==Target:GetCustomProperty("NeedItem"))) and Target:GetCustomProperty("Blocked")==false then
                                    Target0=Target
                                    break
                                end
                            else
                                Target0=Target
                                break
                            end
                        end
                    end
                end
            end
        end
        if Target0~=nil then
            TargetObject=Target0
            OUTLINE:SetSmartProperty("Enabled",true)
            OUTLINE:SetSmartProperty("Object To Outline",TargetObject)
        else
            TargetObject=nil
            OUTLINE:SetSmartProperty("Enabled",false)
        end
    end
    if HoldingItem~=nil then
        if LookingAtItem==false then
            HoldingItem:SetWorldPosition(player:GetViewWorldPosition()+Qua:GetForwardVector()*20+Qua:GetRightVector()*20-Qua:GetUpVector()*20)
            HoldingItem:SetWorldRotation(Rotation.New(player:GetViewWorldRotation().x,player:GetViewWorldRotation().y,player:GetViewWorldRotation().z))
        end
    end
end
---------------All stuff that needs to happen when player looks/stop on item (with RMB)-------------
function LookFocus()
    local player=Game.GetLocalPlayer()
    local Qua=Quaternion.New(player:GetViewWorldRotation())
    if HoldingItem~=nil then
        if LookingAtItem==false then
            if HoldingItem:GetCustomProperty("ChangeLooks")==true then
                HoldingItem:FindChildByName("Geo").visibility=Visibility.FORCE_ON
                HoldingItem:GetCustomProperty("LookObject"):WaitForObject().visibility=Visibility.FORCE_OFF
            end
            HoldingItem:FindChildByName("Geo"):SetRotation(Rotation.New(0,80,0))
            DEPTH_OF_FIELD:SetSmartProperty("Use Focus Object",false)
            DEPTH_OF_FIELD.visibility=Visibility.FORCE_OFF
        else
            DEPTH_OF_FIELD:SetSmartProperty("Use Focus Object",true)
            DEPTH_OF_FIELD:SetSmartProperty("Focus Object",HoldingItem)
            DEPTH_OF_FIELD.visibility=Visibility.FORCE_ON
            local geo=nil
            local LOOK_POS = HoldingItem:GetCustomProperty("LookPos")
            local LOOK_ROT = HoldingItem:GetCustomProperty("LookRot")
            if HoldingItem:GetCustomProperty("ChangeLooks")==true then
                HoldingItem:FindChildByName("Geo").visibility=Visibility.FORCE_OFF
                geo=HoldingItem:GetCustomProperty("LookObject"):WaitForObject()
                geo.visibility=Visibility.FORCE_ON
            else
                geo=HoldingItem:FindChildByName("Geo")
            end
            if geo:IsA("UI Container")==false then
                HoldingItem:SetWorldPosition(player:GetViewWorldPosition()+Qua:GetForwardVector()*LOOK_POS.x+Qua:GetRightVector()*LOOK_POS.y+Qua:GetUpVector()*LOOK_POS.z)
                HoldingItem:SetWorldRotation(Rotation.New(player:GetViewWorldRotation().x,player:GetViewWorldRotation().y,player:GetViewWorldRotation().z))
                geo:SetRotation(Rotation.New(LOOK_ROT.x,LOOK_ROT.y,LOOK_ROT.z))
            end
        end
    end
end
------------------------------------EquippingItem-------------------------------------
function EquipItem(Object)
    local str=Object.name
    _G.PlayerEquipment[str]=1
    TargetObject=nil
    Object:Destroy()
    Events.Broadcast("PlayerEquipmentChanged")
end
------------Function to block interactions for various reason. (Cutscenes, Looking at item etc.)------------
function BlockInteractions()
    InteractionsEnable=false
    OUTLINE:SetSmartProperty("Enabled",false)
end
function UnblockInteractions()
    InteractionsEnable=true
end
-------------All pressing/releasing button interactions for mouse (LMB press/hold, RMB press)----------------
function Press(_,action,_)
    if InteractionsEnable==false then return end
    if action=="LMB" and BlockLMB==false then
        if TargetObject~=nil then
            local str=TargetObject.name
            if API_ITEM_LIST[str]["Category"]=="Equipment" then
                EquipItem(TargetObject)
                --Events.Broadcast("EquipItem",str)
            elseif API_ITEM_LIST[str]["Category"]=="Item" then
                if HoldingItem~=nil then
                    local item=HoldingItem
                    HoldingItem=nil
                    item:SetWorldPosition(item:GetCustomProperty("DefPos"))
                    item:SetWorldRotation(item:GetCustomProperty("DefRot"))
                    item:FindChildByName("Geo"):SetRotation(Rotation.New(0,0,0))
                end
                HoldingItem=TargetObject
                local ref=HoldingItem:GetReference()
                Events.Broadcast("PickedItem",ref)
                TargetObject=nil
                LookFocus()
            elseif API_ITEM_LIST[str]["Category"]=="Interactable" then
                if TargetObject:GetCustomProperty("NeedItem")=="" or (HoldingItem~=nil and HoldingItem.name==TargetObject:GetCustomProperty("NeedItem")) then
                    local event="InteractionPress"
                    local ref=TargetObject:GetReference()
                    if TargetObject:GetCustomProperty("HoldInteraction")==true then
                        event="InteractionHold"
                        Events.Broadcast("BlockMovement",true)
                        BlockLMB=true
                        InteractionHold=true
                    end
                    Events.Broadcast(event,ref)
                end
            end
        end
    end
    if action=="RMB" then
        if HoldingItem~=nil then
            if LookingAtItem==true then
                LookingAtItem=false
                Events.Broadcast("BlockMovement",false)
                Events.Broadcast("LookAtItem",false)
                BlockLMB=false
            else
                LookingAtItem=true
                Events.Broadcast("BlockMovement",true)
                Events.Broadcast("LookAtItem",true)
                BlockLMB=true
                OUTLINE:SetSmartProperty("Enabled",false)
            end
        end
        LookFocus()
    end
end
Input.actionPressedEvent:Connect(Press)
function Release(_,action,_)
    if InteractionsEnable==false then return end
    if action=="LMB" and InteractionHold==true then
        InteractionHold=false
        BlockLMB=false
        Events.Broadcast("BlockMovement",false)
        Events.Broadcast("ReleaseInteraction")
    end
end
Input.actionReleasedEvent:Connect(Release)
---------------------------------------------------------------------------------------------------------

--Events.Broadcast("BlockInteractions",time()+0.5)
function BlockEvent(EndTime)
    BlockInteractions()
    if EndTime-time()>0 then
        Task.Wait(EndTime-time()+0.1)
    end
    UnblockInteractions()
end
Events.Connect("BlockInteractions",BlockEvent)