--[[Event List--
Events.Connect("PickedItem",ObjectReference) --ObjectReference refers to wich object I picked up
Events.Connect("LookAtItem",true/false)    --To let object that I'm holding know that I'm looking on it
]]
-- max 12 numbers
local MANUAL = script:GetCustomProperty("Manual"):WaitForObject()
local PHONE_BOOK = script:GetCustomProperty("PhoneBook"):WaitForObject()
local PAPER_LOOK_SFX = script:GetCustomProperty("PaperLookSFX"):WaitForObject()

local Holding=false

for _,obj in pairs(MANUAL:GetChildren()) do
    obj:SetCustomProperty("OgHeight",obj.height)
    obj:SetCustomProperty("OgPos",Vector2.New(obj.x,obj.y))
end

for name,info in pairs(_G.PhoneBookNumbers) do
    local str=name.." - "..info[3]
    for _,obj in pairs(MANUAL:GetChildren()) do
        if obj.text=="" then
            obj.text=str
            break
        end
    end
end


function UpdateUI()
    local scale1=Vector2.New(UI.GetScreenSize().x/800,UI.GetScreenSize().y/1000)
    if scale1.x<scale1.y then
        scale1.y=scale1.x
    else
        scale1.x=scale1.y
    end
    local scale=scale1.x

    MANUAL.width=CoreMath.Round(800*scale)
    MANUAL.height=CoreMath.Round(1000*scale)

    for _,obj in pairs(MANUAL:GetChildren()) do
        obj.x=obj:GetCustomProperty("OgPos").x*scale
        obj.y=obj:GetCustomProperty("OgPos").y*scale
        obj.height=CoreMath.Round(obj:GetCustomProperty("OgHeight")*scale)
    end
end



function PickedItem(ref)
    local Object=ref:GetObject()
    if Object==PHONE_BOOK then
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