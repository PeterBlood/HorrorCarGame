local SURVIVE_SFX = script:GetCustomProperty("SurviveSFX"):WaitForObject()
local UI_CONTAINER = script:GetCustomProperty("UI Container"):WaitForObject()

local CONTAINER = script:GetCustomProperty("Container"):WaitForObject()
local UI_TEXT_BOX = script:GetCustomProperty("UI Text Box"):WaitForObject()

local helpTime=0
function Animation()
    CONTAINER.visibility=Visibility.FORCE_ON
    SURVIVE_SFX:Play()
    for pr=1,100 do
        UI_CONTAINER.opacity=pr/100
        Task.Wait(0.01)
    end
    Task.Wait(1)
    for pr=1,100 do
        UI_CONTAINER.opacity=1-(pr/100)
        Task.Wait(0.01)
        CONTAINER.opacity=pr/100
    end
end

function HelpComing5()
    Events.Broadcast("TextColor0")
    Events.Broadcast("PhoneDead")
    helpTime=300
    Animation()
    for a=1,helpTime do
        local left=helpTime-a
        local sec=CoreMath.Round(left-math.floor(left/60)*60)
        local str=math.floor(left/60)..":"
        if sec<10 then
            str=str.."0"..sec
        else
            str=str..sec
        end
        UI_TEXT_BOX.text=str
        Task.Wait(1)
    end
    CONTAINER.visibility=Visibility.FORCE_OFF
    Events.Broadcast("VictoryPhone")
end
Events.Connect("HelpComing5",HelpComing5)

function HelpComing8()
    Events.Broadcast("TextColor0")
    Events.Broadcast("PhoneDead")
    helpTime=480
    Animation()
    for a=1,helpTime do
        local left=helpTime-a
        local sec=CoreMath.Round(left-math.floor(left/60)*60)
        local str=math.floor(left/60)..":"
        if sec<10 then
            str=str.."0"..sec
        else
            str=str..sec
        end
        UI_TEXT_BOX.text=str
        Task.Wait(1)
    end
    --Task.Wait(helpTime)
    CONTAINER.visibility=Visibility.FORCE_OFF
    Events.Broadcast("VictoryPhone")
end
Events.Connect("HelpComing8",HelpComing8)