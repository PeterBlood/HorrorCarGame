--[[Event List--
Events.Broadcast("StartDialog", DIALOGUE_ID,DIALOGUE_PART) -- DIALOGUE_ID- ID of a dialogue that will play  ,DIALOGUE_PART- part where dialogue will start (0- default)

Events.Connect("PlayerEquipmentChanged")  --To let interactables know that they need to update info.
Events.Connect("PickedItem",ObjectReference) --ObjectReference refers to wich object I picked up
Events.Connect("LookAtItem",true/false)    --To let object that I'm holding know that I'm looking on it
Events.Connect("DialogEnded")   -- Tells to all items that dialogue ended
]]

local PHONE = script:GetCustomProperty("Phone"):WaitForObject()
local BATTERY_SIGN = script:GetCustomProperty("BatterySign"):WaitForObject()
local TEXT = script:GetCustomProperty("Text"):WaitForObject()
local CLICK_SFX = script:GetCustomProperty("ClickSFX"):WaitForObject()
local BATTERY_SFX = script:GetCustomProperty("BatterySFX"):WaitForObject()
local POWER_OFFSFX = script:GetCustomProperty("PowerOFFSFX"):WaitForObject()

local Charged=false
local Holding=false
local Looking=false
local DialogueInProgress=false

local UI = script:GetCustomProperty("UI"):WaitForObject()
local MANUAL = script:GetCustomProperty("Manual"):WaitForObject()

local CallsLeft=6

for name,info in pairs(_G.PhoneBookNumbers) do
    local str=name.." - "..info[3]
    for _,obj in pairs(MANUAL:GetChildren()) do
        if obj.text=="" then
            obj.text=str
            break
        end
    end
end

function ResetScreen()
    TEXT.text=""
end
function Charge()
    if Charged==false then
        if _G.PlayerEquipment.Batteries==1 then
            BATTERY_SFX:Play()
            _G.PlayerEquipment.Batteries=0
            Charged=true
            BATTERY_SIGN.visibility=Visibility.FORCE_OFF
            PHONE:SetCustomProperty("ChangeLooks",true)
        end
    end
end




function PlayerEquipmentChanged()
    if Holding==true then
        Charge()
    end
end
Events.Connect("PlayerEquipmentChanged",PlayerEquipmentChanged)
function PickedItem(ref)
    local Object=ref:GetObject()
    if Object==PHONE then
        Holding=true
        Charge()
    else
        Holding=false
    end
end
Events.Connect("PickedItem",PickedItem)
function LookAtItem(Look)
    if Holding==true then
        if Look==false then
            ResetScreen()
            Looking=false
            if DialogueInProgress==true then
                Events.Broadcast("EndDialog")
            end
            UI.visibility=Visibility.FORCE_OFF
        else
            Looking=true
            if Charged==true and _G.PlayerEquipment.PhoneBook==1 then
                UI.visibility=Visibility.FORCE_ON
            end
        end
    end
end
Events.Connect("LookAtItem",LookAtItem)





function Pressed(_,action,_)
    if Holding==false or Looking==false or Charged==false or DialogueInProgress==true then return end
    if action=="Space" then
        for name,info in pairs(_G.PhoneBookNumbers) do
            if name==TEXT.text then
                if CallsLeft>0 then
                    print("Call: "..name)
                    DialogueInProgress=true
                    Events.Broadcast("StartDialog", info[1],info[2])
                else
                    Events.Broadcast("PhoneDead")
                end
                CallsLeft=CallsLeft-1
            end
        end
    elseif action=="Backspace" then
        ResetScreen()
    elseif action=="0" or action=="1" or action=="2" or action=="3" or action=="4" or action=="5" or action=="6" or action=="7" or action=="8" or action=="9" then
        if #TEXT.text<10 then
            CLICK_SFX:Stop()
            CLICK_SFX.pitch=0-tonumber(action*100)
            CLICK_SFX:Play()
            TEXT.text=TEXT.text..action
        end
    end
end
Input.actionPressedEvent:Connect(Pressed)
function DialogEnded()
    DialogueInProgress=false
    ResetScreen()
end
Events.Connect("DialogEnded",DialogEnded)

local GEO = script:GetCustomProperty("Geo"):WaitForObject()
local CHARGED_GEO = script:GetCustomProperty("ChargedGeo"):WaitForObject()

function PhoneDead()
    if Charged==true then
        POWER_OFFSFX:Play()
        Charged=false
        BATTERY_SIGN.visibility=Visibility.FORCE_ON
        PHONE:SetCustomProperty("ChangeLooks",false)
        GEO.visibility=Visibility.FORCE_ON
        CHARGED_GEO.visibility=Visibility.FORCE_OFF
    end
end
Events.Connect("PhoneDead",PhoneDead)
