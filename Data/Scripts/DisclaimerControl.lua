local DISCLAIMER = script:GetCustomProperty("Disclaimer"):WaitForObject()
local UI_TEXT_BOX = script:GetCustomProperty("UI Text Box"):WaitForObject()
local CLICK_SFX = script:GetCustomProperty("ClickSFX"):WaitForObject()

function ShowUI(lost)
    if lost==1 then
        DISCLAIMER.visibility=Visibility.FORCE_OFF
    end
end
Events.Connect("ShowUI",ShowUI)

Task.Wait(4)
local pressed=false

function Press(_,action)
    if action=="LMB" and pressed==false then
        pressed=true
        CLICK_SFX:Play()
        UI_TEXT_BOX.visibility=Visibility.FORCE_OFF
        Events.BroadcastToServer("CloseDisclaimer")
        for pr=1,100 do
            DISCLAIMER.opacity=1-(pr/100)
            Task.Wait(0.01)
        end
        Events.Broadcast("StartGame")
    end
end
Input.actionPressedEvent:Connect(Press)

for pr=1,50 do
    UI_TEXT_BOX:SetColor(Color.New(1,1,1,pr/50))
    Task.Wait(0.01)
end
while pressed==false do
    if UI_TEXT_BOX.visibility==2 then
        break
    end
    for pr=1,25 do
        UI_TEXT_BOX:SetColor(Color.New(1,1,1,1-(pr/50)))
        Task.Wait(0.01)
    end
    Task.Wait(0.25)
    if UI_TEXT_BOX.visibility==2 then
        break
    end
    for pr=1,25 do
        UI_TEXT_BOX:SetColor(Color.New(1,1,1,0.5+(pr/50)))
        Task.Wait(0.01)
    end
    Task.Wait(0.25)
    if UI_TEXT_BOX.visibility==2 then
        break
    end
end