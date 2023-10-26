--[[Event List--
Events.Connect("PickedItem",ObjectReference) --ObjectReference refers to wich object I picked up
Events.Connect("LookAtItem",true/false)    --To let object that I'm holding know that I'm looking on it
]]
local HOTWIRE_MANUAL = script:GetCustomProperty("HotwireManual"):WaitForObject()

local MANUAL = script:GetCustomProperty("Manual"):WaitForObject()
local PAPER_LOOK_SFX = script:GetCustomProperty("PaperLookSFX"):WaitForObject()

local Holding=false

function UpdateUI()
    local scale1=Vector2.New(UI.GetScreenSize().x/1.5/381,UI.GetScreenSize().y/1.5/515)
    if scale1.x<scale1.y then
        scale1.y=scale1.x
    else
        scale1.x=scale1.y
    end
    local scale=scale1.x

    MANUAL.width=CoreMath.Round(381*scale)
    MANUAL.height=CoreMath.Round(515*scale)
end


function PickedItem(ref)
    local Object=ref:GetObject()
    if Object==HOTWIRE_MANUAL then
        Holding=true
    else
        Holding=false
    end
end
Events.Connect("PickedItem",PickedItem)
function LookAtItem(Look)
    if Holding==true and Look==true then
        PAPER_LOOK_SFX:Play()
        UpdateUI()
    end
end
Events.Connect("LookAtItem",LookAtItem)