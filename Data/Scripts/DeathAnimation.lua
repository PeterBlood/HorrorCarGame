local CAMERA = script:GetCustomProperty("Camera"):WaitForObject()
local UI_IMAGE = script:GetCustomProperty("UI Image"):WaitForObject()
local MAIN_CAMERA = script:GetCustomProperty("MainCamera"):WaitForObject()
local HUMANOID_1_RIG = script:GetCustomProperty("Humanoid 1 Rig"):WaitForObject()
local DEATH_POS = script:GetCustomProperty("DeathPos"):WaitForObject()

local DOOR_1 = script:GetCustomProperty("Door1"):WaitForObject()
local DOOR_2 = script:GetCustomProperty("Door2"):WaitForObject()
local DOOR_3 = script:GetCustomProperty("Door3"):WaitForObject()
local DOOR_4 = script:GetCustomProperty("Door4"):WaitForObject()

local ELECTROCUTED_CAM = script:GetCustomProperty("ElectrocutedCam"):WaitForObject()
local ELECTROCUTION_SFX = script:GetCustomProperty("ElectrocutionSFX"):WaitForObject()
local ELECTR_POST_PROCESS = script:GetCustomProperty("ElectrPostProcess"):WaitForObject()
local SPARK_VFX = script:GetCustomProperty("SparkVFX"):WaitForObject()



local Show=false
Task.Wait(3)
local camCapture = MAIN_CAMERA:Capture(CameraCaptureResolution.VERY_LARGE)
UI_IMAGE:SetCameraCapture(camCapture)
function Tick()
    if Show==true then
        camCapture:Refresh()
    end
end

function DoorDeath(ID)
    local str="Door"..ID
    local Door=script:GetCustomProperty(str):WaitForObject()
    if ID==1 or ID==3 then
        Door:SetRotation(Rotation.New(0,0,90))
    else
        Door:SetRotation(Rotation.New(0,0,-90))
    end

    MAIN_CAMERA:SetWorldRotation(Game.GetLocalPlayer():GetViewWorldRotation())
    MAIN_CAMERA.hasFreeControl=false
    MAIN_CAMERA:StopMove()
    MAIN_CAMERA:StopRotate()
    local cam=nil
    for _,obj in pairs(DEATH_POS:GetChildren()) do
        if obj.name==tostring(ID) then
            cam=obj
            break
        end
    end
    MAIN_CAMERA:MoveTo(cam:GetWorldPosition(),0.75)
    MAIN_CAMERA:RotateTo(cam:GetWorldRotation(),0.75)
    Task.Wait(0.5)
    Game.GetLocalPlayer():SetDefaultCamera(CAMERA)
    Show=true
    Task.Wait(0.25)
    HUMANOID_1_RIG:PlayAnimation("unarmed_boo", {startPosition=0.1,playbackRate=0.1})
    Task.Wait(1.0)
    HUMANOID_1_RIG.visibility=Visibility.INHERIT
    Task.Wait(3)
    HUMANOID_1_RIG.visibility=Visibility.FORCE_OFF
end
Events.Connect("DoorDeath",DoorDeath)

function ElectrocutionDeath()
    MAIN_CAMERA:SetWorldRotation(Game.GetLocalPlayer():GetViewWorldRotation())
    MAIN_CAMERA.hasFreeControl=false
    MAIN_CAMERA:StopMove()
    MAIN_CAMERA:StopRotate()
    MAIN_CAMERA:MoveTo(ELECTROCUTED_CAM:GetWorldPosition(),0.3)
    MAIN_CAMERA:RotateTo(ELECTROCUTED_CAM:GetWorldRotation(),0.3)
    ELECTROCUTION_SFX:Play()
    ELECTR_POST_PROCESS.visibility=Visibility.FORCE_ON
    SPARK_VFX:Play()
end
Events.Connect("ElectrocutionDeath",ElectrocutionDeath)
--[[
function Press(_,action,_)
    if action=="0" then
        MAIN_CAMERA:SetWorldRotation(Game.GetLocalPlayer():GetViewWorldRotation())
        MAIN_CAMERA.hasFreeControl=false
        MAIN_CAMERA:StopMove()
        MAIN_CAMERA:StopRotate()
        Game.GetLocalPlayer():SetDefaultCamera(CAMERA)
        Show=true
    end
    if action=="9" then
        HUMANOID_1_RIG:PlayAnimation("unarmed_boo", {startPosition=0.1,playbackRate=0.1})
        Task.Wait(1.0)
        HUMANOID_1_RIG.visibility=Visibility.INHERIT
        Task.Wait(3)
        HUMANOID_1_RIG.visibility=Visibility.FORCE_OFF
    end
end
Input.actionPressedEvent:Connect(Press)]]