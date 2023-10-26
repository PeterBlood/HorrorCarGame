local BLACK_SCREEN = script:GetCustomProperty("BlackScreen"):WaitForObject()
local ENGINE_START_SFX = script:GetCustomProperty("EngineStartSFX"):WaitForObject()
local CAR_MOVE_SFX = script:GetCustomProperty("CarMoveSFX"):WaitForObject()

function VictoryHotwire()
    ENGINE_START_SFX:Play()
    --Task.Wait(0.5)
    BLACK_SCREEN.opacity=1
    BLACK_SCREEN.visibility=Visibility.FORCE_ON
    Task.Wait(2.0)--2.5
    CAR_MOVE_SFX:Play()

end
Events.Connect("VictoryHotwire",VictoryHotwire)