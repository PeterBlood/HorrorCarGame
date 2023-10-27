local AMBIENCE_SFX = script:GetCustomProperty("AmbienceSFX"):WaitForObject()
local MAIN_CAMERA = script:GetCustomProperty("MainCamera"):WaitForObject()
local DOOR_1 = script:GetCustomProperty("Door1"):WaitForObject()
local DOOR_2 = script:GetCustomProperty("Door2"):WaitForObject()
local DOOR_3 = script:GetCustomProperty("Door3"):WaitForObject()
local DOOR_4 = script:GetCustomProperty("Door4"):WaitForObject()
local OUTSIDE_AMBIENCE_SFX = script:GetCustomProperty("OutsideAmbienceSFX"):WaitForObject()

local ogVol1=AMBIENCE_SFX.volume
local ogVol2=OUTSIDE_AMBIENCE_SFX.volume
local BlockUpdate=true

local Pos=Vector3.New(0,0,0)
local GameInProgress=false

function Tick()
    if BlockUpdate==true or GameInProgress==false then return end
    --local WINDOW = script:GetCustomProperty("Window")
    --local DOOR = script:GetCustomProperty("Door")
    local pr1=DOOR_1:GetCustomProperty("Window")
    if DOOR_1:GetCustomProperty("Door")<pr1 then
        pr1=DOOR_1:GetCustomProperty("Door")
    end
    local pr2=DOOR_2:GetCustomProperty("Window")
    if DOOR_2:GetCustomProperty("Door")<pr2 then
        pr2=DOOR_2:GetCustomProperty("Door")
    end
    local pr3=DOOR_3:GetCustomProperty("Window")
    if DOOR_3:GetCustomProperty("Door")<pr3 then
        pr3=DOOR_3:GetCustomProperty("Door")
    end
    local pr4=DOOR_4:GetCustomProperty("Window")
    if DOOR_4:GetCustomProperty("Door")<pr4 then
        pr4=DOOR_4:GetCustomProperty("Door")
    end
    local minpr=pr1
    if pr2<pr1 then
        minpr=pr2
    end
    if pr3<pr1 then
        minpr=pr3
    end
    if pr4<pr1 then
        minpr=pr4
    end
    --AMBIENCE_SFX.pitch=-700*minpr/100
    --AMBIENCE_SFX.volume=1-0.6*minpr/100
    AMBIENCE_SFX.volume=ogVol1*minpr/100
    OUTSIDE_AMBIENCE_SFX.volume=ogVol2*(1-minpr/100)
    Pos=(Vector3.New(-1000,-1000,0)*(100-pr1)/100)+(Vector3.New(1000,-1000,0)*(100-pr2)/100)+(Vector3.New(-1000,1000,0)*(100-pr3)/100)+(Vector3.New(1000,1000,0)*(100-pr4)/100)
    --AMBIENCE_SFX:SetWorldPosition(MAIN_CAMERA:GetWorldPosition()+Pos)
    OUTSIDE_AMBIENCE_SFX:SetWorldPosition(MAIN_CAMERA:GetWorldPosition()+Pos)
end

function DoorDeath()
    BlockUpdate=true
end
Events.Connect("DoorDeath",DoorDeath)


AMBIENCE_SFX.volume=0
OUTSIDE_AMBIENCE_SFX.volume=0
function StartGame()
    GameInProgress=true
    BlockUpdate=false
end
Events.Connect("StartGame",StartGame)