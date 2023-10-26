--[[Event List--
Events.Broadcast("WheelWiresColor",PWColor,SWColor,AWColor,BWColor,FourWires)   -- sends wire colors and how they arranged

Events.Connect("GetWheelWiresColor",GetWheelWiresColor) -- request to get wire colors
Events.Connect("InteractionPress",ObjectReference) --ObjectReference refers to wich object I'm interacting with
Events.Connect("BlockInteractions",EndTime) -- EndTime refers to when Interactions will be unblocked
]]


local CONNECT_DOT = script:GetCustomProperty("ConnectDot"):WaitForObject()
local BOLT = script:GetCustomProperty("Bolt"):WaitForObject()
local SCPANEL = script:GetCustomProperty("SCPanel"):WaitForObject()
local WIRES = script:GetCustomProperty("Wires"):WaitForObject()
local CONNECT = script:GetCustomProperty("Connect"):WaitForObject()

local WIRES_CUT_SFX = script:GetCustomProperty("WiresCutSFX"):WaitForObject()
local WIRES_CONNECT_SFX = script:GetCustomProperty("WiresConnectSFX"):WaitForObject()
local BOLT_SFX = script:GetCustomProperty("BoltSFX"):WaitForObject()
local SCPANEL_SFX = script:GetCustomProperty("SCPanelSFX"):WaitForObject()


------------------Generating Wires-------------------

--Generating Random Color--
local PWColor=Color.New(math.random(2)-1,math.random(2)-1,math.random(2)-1)
local SWColor=Color.New(math.random(2)-1,math.random(2)-1,math.random(2)-1)
local AWColor=Color.New(math.random(2)-1,math.random(2)-1,math.random(2)-1)
local BWColor=Color.New(math.random(2)-1,math.random(2)-1,math.random(2)-1)
while PWColor==SWColor or PWColor==AWColor or PWColor==BWColor do
    PWColor=Color.New(math.random(2)-1,math.random(2)-1,math.random(2)-1)
end
while SWColor==PWColor or SWColor==AWColor or SWColor==BWColor do
    SWColor=Color.New(math.random(2)-1,math.random(2)-1,math.random(2)-1)
end
while AWColor==PWColor or AWColor==SWColor or AWColor==BWColor do
    AWColor=Color.New(math.random(2)-1,math.random(2)-1,math.random(2)-1)
end
while BWColor==PWColor or BWColor==AWColor or BWColor==SWColor do
    BWColor=Color.New(math.random(2)-1,math.random(2)-1,math.random(2)-1)
end
local FourWires=true
------------------------
function GenerateWires()
    for a=1,2 do    -- generate power wire
        local count=0
        for id,obj in pairs(WIRES:GetChildren()) do
            if obj:GetCustomProperty("Type")==0 then
                count=count+1
            end
        end
        local rn=1
        if count>1 then
            math.random(count)
        end
        for id,obj in pairs(WIRES:GetChildren()) do
            if obj:GetCustomProperty("Type")==0 then
                rn=rn-1
                if rn==0 then
                    obj:SetCustomProperty("Type",1)
                    for _,obj2 in pairs(obj:GetCustomProperty("Geo"):WaitForObject():GetChildren()) do
                        obj2:SetColor(PWColor)
                    end
                    obj:GetCustomProperty("CutPos"):WaitForObject():GetCustomProperty("Geo"):WaitForObject():SetColor(PWColor)
                end
            end
        end
    end
    if true then    -- generate starter wire
        local count=0
        for id,obj in pairs(WIRES:GetChildren()) do
            if obj:GetCustomProperty("Type")==0 then
                count=count+1
            end
        end
        local rn=1
        if count>1 then
            math.random(count)
        end
        for id,obj in pairs(WIRES:GetChildren()) do
            if obj:GetCustomProperty("Type")==0 then
                rn=rn-1
                if rn==0 then
                    obj:SetCustomProperty("Type",2)
                    for _,obj2 in pairs(obj:GetCustomProperty("Geo"):WaitForObject():GetChildren()) do
                        obj2:SetColor(SWColor)
                    end
                    obj:GetCustomProperty("CutPos"):WaitForObject():GetCustomProperty("Geo"):WaitForObject():SetColor(SWColor)
                end
            end
        end
    end
    local DW=math.random(2)
    if DW==2 then
        FourWires=false
    end
    for a=1,2 do    -- generate random wires
        local count=0
        for id,obj in pairs(WIRES:GetChildren()) do
            if obj:GetCustomProperty("Type")==0 then
                count=count+1
            end
        end
        local rn=1
        if count>1 then
            math.random(count)
        end
        for id,obj in pairs(WIRES:GetChildren()) do
            if obj:GetCustomProperty("Type")==0 then
                rn=rn-1
                if rn==0 then
                    obj:SetCustomProperty("Type",4)
                    for _,obj2 in pairs(obj:GetCustomProperty("Geo"):WaitForObject():GetChildren()) do
                        obj2:SetColor(BWColor)
                        if a==1 or DW==2 then
                            obj:SetCustomProperty("Type",3)
                            obj2:SetColor(AWColor)
                        end
                    end
                    if a==1 or DW==2 then
                        obj:GetCustomProperty("CutPos"):WaitForObject():GetCustomProperty("Geo"):WaitForObject():SetColor(AWColor)
                    else
                        obj:GetCustomProperty("CutPos"):WaitForObject():GetCustomProperty("Geo"):WaitForObject():SetColor(BWColor)
                    end
                end
            end
        end
    end
end
GenerateWires()

function GetWheelWiresColor()
    Events.Broadcast("WheelWiresColor",PWColor,SWColor,AWColor,BWColor,FourWires)
end
Events.Connect("GetWheelWiresColor",GetWheelWiresColor)

------------------------All interactions with the wheel--------------------------
local CutWrongWire=false
local WiresConnected=false
local HoldingWire=nil
local BatteryConnected=false

function InteractionPress(ref)
    local obj=ref:GetObject()
    if obj==BOLT and BOLT:GetCustomProperty("Blocked")==false then
        BOLT_SFX:Play()
        BOLT.visibility=Visibility.FORCE_OFF
        BOLT:SetCustomProperty("Blocked",true)
        SCPANEL:SetCustomProperty("Blocked",false)
    end
    if obj==SCPANEL and SCPANEL:GetCustomProperty("Blocked")==false then
        SCPANEL_SFX:Play()
        SCPANEL.visibility=Visibility.FORCE_OFF
        SCPANEL:SetCustomProperty("Blocked",true)
        for _,obj2 in pairs(WIRES:GetChildren()) do
            obj2:GetCustomProperty("CutPos"):WaitForObject():SetCustomProperty("Blocked",false)
        end
    end
    for _,obj2 in pairs(WIRES:GetChildren()) do
        local CP=obj2:GetCustomProperty("CutPos"):WaitForObject()
        if obj==CP then
            CP.visibility=Visibility.FORCE_OFF
            CP:SetCustomProperty("Blocked",true)
            if obj2:GetCustomProperty("Type")>2 then
                CutWrongWire=true
            end
            WIRES_CUT_SFX:Play()
            obj2:GetCustomProperty("Cut"):WaitForObject():SetCustomProperty("Blocked",false)
            obj2:GetCustomProperty("Cut"):WaitForObject().visibility=Visibility.FORCE_ON
        end
    end
    for _,obj2 in pairs(WIRES:GetChildren()) do
        local Cut=obj2:GetCustomProperty("Cut"):WaitForObject()
        if obj==Cut then
            if _G.PlayerEquipment.Gloves==0 and obj2:GetCustomProperty("Type")==1 then
                Events.Broadcast("BlockMovement",true)
                Events.Broadcast("StopLooking")
                Events.Broadcast("ReleaseItem")
                Task.Wait(0.1)
                Events.Broadcast("ElectrocutionDeath")
                --print("BZZZZZZ DEAD")
                return
            end
            if HoldingWire==nil then
                HoldingWire=Cut
                CONNECT_DOT.visibility=Visibility.FORCE_ON
                CONNECT_DOT:SetWorldPosition(HoldingWire:GetCustomProperty("PosA"):WaitForObject():GetWorldPosition())
                HoldingWire:SetCustomProperty("Blocked",true)
            else
                if WiresConnected==false then
                    if HoldingWire.parent:GetCustomProperty("Type")==1 and obj2:GetCustomProperty("Type")==1 then
                        BatteryConnected=true
                        WIRES_CONNECT_SFX:Play()
                    end
                    WiresConnected=true
                    local StartPos = HoldingWire:GetCustomProperty("PosA"):WaitForObject():GetWorldPosition()
                    local EndPos = Cut:GetCustomProperty("PosA"):WaitForObject():GetWorldPosition()
                    local dist=math.sqrt((EndPos.x-StartPos.x)^2+(EndPos.y-StartPos.y)^2+(EndPos.z-StartPos.z)^2)
                    CONNECT:SetScale(Vector3.New(dist/100,CONNECT:GetScale().y,CONNECT:GetScale().z))
                    CONNECT:SetWorldPosition((StartPos+EndPos)/2)
                    CONNECT:LookAt(StartPos)
                    HoldingWire:SetCustomProperty("Blocked",false)
                    HoldingWire=nil
                    CONNECT_DOT.visibility=Visibility.FORCE_OFF
                else
                    if (HoldingWire.parent:GetCustomProperty("Type")==1 and obj2:GetCustomProperty("Type")==2) or (HoldingWire.parent:GetCustomProperty("Type")==2 and obj2:GetCustomProperty("Type")==1) then
                        if BatteryConnected==true and CutWrongWire==false then
                            WIRES_CONNECT_SFX:Play()
                            -----------------------------------------------------------------------------------------put victory event here!!!
                            print("BOOOOOOOOOOOOM") --------------------------------------------------------------------
                            HoldingWire:SetCustomProperty("Blocked",false)
                            HoldingWire=nil
                            CONNECT_DOT.visibility=Visibility.FORCE_OFF
                        end
                    end
                end
            end
        end
    end
end
Events.Connect("InteractionPress",InteractionPress)

--------------------Clean wire if player holds one------------------------
function BlockInteractions()
    if HoldingWire~=nil then
        HoldingWire:SetCustomProperty("Blocked",false)
        HoldingWire=nil
        CONNECT_DOT.visibility=Visibility.FORCE_OFF
    end
end
Events.Connect("BlockInteractions",BlockInteractions)