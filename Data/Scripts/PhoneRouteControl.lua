local SURVIVE_SFX = script:GetCustomProperty("SurviveSFX"):WaitForObject()
local UI_CONTAINER = script:GetCustomProperty("UI Container"):WaitForObject()

local helpTime=0
function Animation()
    SURVIVE_SFX:Play()
    for pr=1,100 do
        UI_CONTAINER.opacity=pr/100
        Task.Wait(0.01)
    end
    Task.Wait(1)
    for pr=1,100 do
        UI_CONTAINER.opacity=1-(pr/100)
        Task.Wait(0.01)
    end
end

function HelpComing5()
    Events.Broadcast("TextColor0")
    Events.Broadcast("PhoneDead")
    helpTime=time()+300
    Animation()
    Task.Wait(helpTime)
    Events.Broadcast("VictoryPhone")
end
Events.Connect("HelpComing5",HelpComing5)

function HelpComing8()
    Events.Broadcast("TextColor0")
    Events.Broadcast("PhoneDead")
    helpTime=time()+480
    Animation()
    Task.Wait(helpTime)
    Events.Broadcast("VictoryPhone")
end
Events.Connect("HelpComing8",HelpComing8)