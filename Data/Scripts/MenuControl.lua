local PLAY_BUTTON = script:GetCustomProperty("PlayButton"):WaitForObject()
local HOW_TO_PLAY_BUTTON = script:GetCustomProperty("HowToPlayButton"):WaitForObject()
local CONTROLS = script:GetCustomProperty("Controls"):WaitForObject()
local CLICK_SFX = script:GetCustomProperty("ClickSFX"):WaitForObject()
local GEO = script:GetCustomProperty("Geo"):WaitForObject()

local BLACK_SCREEN = script:GetCustomProperty("BlackScreen"):WaitForObject()
local UI_CONTAINER = script:GetCustomProperty("UI Container"):WaitForObject()
local MAIN_CAMERA = script:GetCustomProperty("MainCamera"):WaitForObject()
local CONTROLS_BUTTON = script:GetCustomProperty("ControlsButton"):WaitForObject()
local HTP = script:GetCustomProperty("HTP"):WaitForObject()

UI.SetCursorVisible(true)
UI.SetCanCursorInteractWithUI(true)
local AMBIENCE_SFX = script:GetCustomProperty("AmbienceSFX"):WaitForObject()

function StartGame()
    BLACK_SCREEN.opacity=0
    BLACK_SCREEN.visibility=Visibility.FORCE_ON
    for pr=1,100 do
        BLACK_SCREEN.opacity=pr/100
        AMBIENCE_SFX.volume=1-pr/100
        Task.Wait(0.01)
    end
    UI_CONTAINER.visibility=Visibility.FORCE_OFF
    AMBIENCE_SFX:Stop()
    UI.SetCursorVisible(false)
    UI.SetCanCursorInteractWithUI(false)
    Task.Wait(1)
    GEO.visibility=Visibility.FORCE_OFF
    Game.GetLocalPlayer():SetDefaultCamera(MAIN_CAMERA)
    Events.Broadcast("StartGame")
    Task.Wait(0.5)
    BLACK_SCREEN.visibility=Visibility.FORCE_OFF
end

function PlayClick()
    CLICK_SFX:Play()
    PLAY_BUTTON.isInteractable=false
    HOW_TO_PLAY_BUTTON.isInteractable=false
    StartGame()
end
PLAY_BUTTON.clickedEvent:Connect(PlayClick)

function HTPClick()
    CLICK_SFX:Play()
    if HTP.visibility==1 then
        HTP.visibility=Visibility.FORCE_OFF
    else
        CONTROLS.visibility=Visibility.FORCE_OFF
        HTP.visibility=Visibility.FORCE_ON
    end
end
HOW_TO_PLAY_BUTTON.clickedEvent:Connect(HTPClick)

function CClick()
    CLICK_SFX:Play()
    if CONTROLS.visibility==1 then
        CONTROLS.visibility=Visibility.FORCE_OFF
    else
        HTP.visibility=Visibility.FORCE_OFF
        CONTROLS.visibility=Visibility.FORCE_ON
    end
end
CONTROLS_BUTTON.clickedEvent:Connect(CClick)