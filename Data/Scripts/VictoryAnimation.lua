local BLACK_SCREEN = script:GetCustomProperty("BlackScreen"):WaitForObject()
local ENGINE_START_SFX = script:GetCustomProperty("EngineStartSFX"):WaitForObject()
local CAR_MOVE_SFX = script:GetCustomProperty("CarMoveSFX"):WaitForObject()
local CAR = script:GetCustomProperty("Car"):WaitForObject()

local CAR_LOOP_SFX = script:GetCustomProperty("CarLoopSFX"):WaitForObject()
local SHUTDOWN_SFX = script:GetCustomProperty("ShutdownSFX"):WaitForObject()

local GameOver=false

function VictoryHotwire()
    if GameOver==true then return end
    ENGINE_START_SFX:Play()
    --Task.Wait(0.5)
    BLACK_SCREEN.opacity=1
    BLACK_SCREEN.visibility=Visibility.FORCE_ON
    Task.Wait(2.0)--2.5
    CAR_MOVE_SFX:Play()
    GameOver=true

end
Events.Connect("VictoryHotwire",VictoryHotwire)


function VictoryPhone()
    if GameOver==true then return end
    GameOver=true
    CAR.visibility=Visibility.FORCE_ON
    CAR_LOOP_SFX:Play()
    local pos=CAR:GetPosition()
    CAR:MoveTo(Vector3.New(pos.x,1000,pos.z),5,true)
    Task.Wait(4)
    CAR_LOOP_SFX:Stop()
    SHUTDOWN_SFX:Play()
    BLACK_SCREEN.opacity=1
    BLACK_SCREEN.visibility=Visibility.FORCE_ON
end
Events.Connect("VictoryPhone",VictoryPhone)



function DoorDeath()
    GameOver=true
end
Events.Connect("DoorDeath",DoorDeath)
function ElectrocutionDeath()
    GameOver=true
end
Events.Connect("ElectrocutionDeath",ElectrocutionDeath)