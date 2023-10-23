--[[Event List--
Events.Broadcast("GetWheelWiresColor") -- request to get wire colors

Events.Connect("WheelWiresColor",PWColor,SWColor,AWColor,BWColor,FourWires)   -- sends wire colors and how they arranged
Events.Connect("PickedItem",ObjectReference) --ObjectReference refers to wich object I picked up
Events.Connect("LookAtItem",true/false)    --To let object that I'm holding know that I'm looking on it
]]
local CAR_MANUAL = script:GetCustomProperty("CarManual"):WaitForObject()

local MANUAL = script:GetCustomProperty("Manual"):WaitForObject()
local BOX_1 = script:GetCustomProperty("Box1"):WaitForObject()
local BOX_2 = script:GetCustomProperty("Box2"):WaitForObject()
local BOX_3 = script:GetCustomProperty("Box3"):WaitForObject()
local BOX_4 = script:GetCustomProperty("Box4"):WaitForObject()
local BATTERY = script:GetCustomProperty("Battery"):WaitForObject()
local STARTER = script:GetCustomProperty("Starter"):WaitForObject()
local WIRE_3 = script:GetCustomProperty("Wire3"):WaitForObject()
local WIRE_4 = script:GetCustomProperty("Wire4"):WaitForObject()

local Holding=false

function WheelWiresColor(PWColor,SWColor,AWColor,BWColor,FourWires)
    BATTERY:SetColor(Color.New(PWColor.r,PWColor.g,PWColor.b,0.75))
    STARTER:SetColor(Color.New(SWColor.r,SWColor.g,SWColor.b,0.75))
    WIRE_3:SetColor(Color.New(AWColor.r,AWColor.g,AWColor.b,0.75))
    WIRE_4:SetColor(Color.New(BWColor.r,BWColor.g,BWColor.b,0.75))
    if FourWires==false then
        BOX_4.visibility=Visibility.FORCE_OFF
    end
end
Events.Connect("WheelWiresColor",WheelWiresColor)

Events.Broadcast("GetWheelWiresColor")

function UpdateUI()
    local scale1=Vector2.New(UI.GetScreenSize().x/805,UI.GetScreenSize().y/515)
    if scale1.x<scale1.y then
        scale1.y=scale1.x
    else
        scale1.x=scale1.y
    end
    local scale=scale1.x

    MANUAL.width=CoreMath.Round(805*scale)
    MANUAL.height=CoreMath.Round(515*scale)

    BOX_1.x=500*scale
    BOX_1.y=100*scale
    BOX_1.width=CoreMath.Round(50*scale)
    BOX_1.height=CoreMath.Round(50*scale)
    BOX_2.x=500*scale
    BOX_2.y=175*scale
    BOX_2.width=CoreMath.Round(50*scale)
    BOX_2.height=CoreMath.Round(50*scale)
    BOX_3.x=500*scale
    BOX_3.y=250*scale
    BOX_3.width=CoreMath.Round(50*scale)
    BOX_3.height=CoreMath.Round(50*scale)
    BOX_4.x=500*scale
    BOX_4.y=325*scale
    BOX_4.width=CoreMath.Round(50*scale)
    BOX_4.height=CoreMath.Round(50*scale)
end


function PickedItem(ref)
    local Object=ref:GetObject()
    if Object==CAR_MANUAL then
        Holding=true
    else
        Holding=false
    end
end
Events.Connect("PickedItem",PickedItem)
function LookAtItem(Look)
    if Holding==true and Look==true then
        UpdateUI()
    end
end
Events.Connect("LookAtItem",LookAtItem)