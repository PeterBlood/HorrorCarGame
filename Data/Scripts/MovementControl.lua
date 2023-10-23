--[[Event List--
Events.Broadcast("OpenGloveBox",true/false) -- true to open / false to close
Events.Broadcast("BlockInteractions",EndTime) -- EndTime refers to when Interactions will be unblocked

Events.Connect("BlockMovement",true/false) -- true to block / false to unblock. Also blocks camera rotation.
]]


--[[ ---------Properties of each CameraPos---------------
local W = script:GetCustomProperty("W")
local WBLOCKED = script:GetCustomProperty("WBlocked")
local A = script:GetCustomProperty("A")
local ABLOCKED = script:GetCustomProperty("ABlocked")
local S = script:GetCustomProperty("S")
local SBLOCKED = script:GetCustomProperty("SBlocked")
local D = script:GetCustomProperty("D")
local DBLOCKED = script:GetCustomProperty("DBlocked")
local MAX_PITCH = script:GetCustomProperty("MaxPitch")
local MAX_YAW = script:GetCustomProperty("MaxYaw")
]]
local MAIN_CAMERA = script:GetCustomProperty("MainCamera"):WaitForObject()
local CAMERA_POS = script:GetCustomProperty("CameraPos"):WaitForObject()

--UI--
local S = script:GetCustomProperty("S"):WaitForObject()
local A = script:GetCustomProperty("A"):WaitForObject()
local D = script:GetCustomProperty("D"):WaitForObject()
local W = script:GetCustomProperty("W"):WaitForObject()
------

local player=Game.GetLocalPlayer()
local LastMove=0
local MyPos=3
local MyCamera=nil
for _,obj in pairs(CAMERA_POS:GetChildren()) do
    if obj.name=="3" then
        MyCamera=obj
    end
end
local CanMove=true

function UpdateUI()
    if CanMove==true then
        if MyCamera:GetCustomProperty("ABlocked")==false then
            A.visibility=Visibility.INHERIT
        else
            A.visibility=Visibility.FORCE_OFF
        end
        if MyCamera:GetCustomProperty("SBlocked")==false then
            S.visibility=Visibility.INHERIT
        else
            S.visibility=Visibility.FORCE_OFF
        end
        if MyCamera:GetCustomProperty("DBlocked")==false then
            D.visibility=Visibility.INHERIT
        else
            D.visibility=Visibility.FORCE_OFF
        end
        if MyCamera:GetCustomProperty("WBlocked")==false then
            W.visibility=Visibility.INHERIT
        else
            W.visibility=Visibility.FORCE_OFF
        end
    else
        W.visibility=Visibility.FORCE_OFF
        A.visibility=Visibility.FORCE_OFF
        S.visibility=Visibility.FORCE_OFF
        D.visibility=Visibility.FORCE_OFF
    end
end

function Move(pos)
    --Broadcast Events if needed--
    if MyPos==6 then
        Events.Broadcast("OpenGloveBox",false)
    end

    MyPos=tonumber(pos)
    script:SetCustomProperty("PlayerCamID",MyPos)
    if MyPos==6 then
        Events.Broadcast("OpenGloveBox",true)
    end
    -----------Moving Camera-----------
    MAIN_CAMERA:SetWorldRotation(player:GetViewWorldRotation())
    MAIN_CAMERA.hasFreeControl=false
    MAIN_CAMERA:StopMove()
    MAIN_CAMERA:StopRotate()
    local cam=nil
    for _,obj in pairs(CAMERA_POS:GetChildren()) do
        if obj.name==pos then
            cam=obj
            break
        end
    end
    
    LastMove=time()
    MyCamera=cam
    MAIN_CAMERA:MoveTo(cam:GetPosition(),0.5,true)
    MAIN_CAMERA:RotateTo(cam:GetRotation(),0.5,true)
    UpdateUI()
    Task.Wait(0.5)
    if time()>=LastMove+0.4 then
        MAIN_CAMERA.currentPitch=0
        MAIN_CAMERA.currentYaw=0
        
        MAIN_CAMERA.maxPitch=MyCamera:GetCustomProperty("MaxPitch")
        MAIN_CAMERA.minPitch=MyCamera:GetCustomProperty("MaxPitch")*-1
        if MyCamera:GetCustomProperty("MaxYaw")~=360 then
            MAIN_CAMERA.isYawLimited=true
            MAIN_CAMERA.maxYaw=MyCamera:GetCustomProperty("MaxYaw")
            MAIN_CAMERA.minYaw=MyCamera:GetCustomProperty("MaxYaw")*-1
        else
            MAIN_CAMERA.isYawLimited=false
            MAIN_CAMERA.maxYaw=360
            MAIN_CAMERA.minYaw=-360
        end
        if CanMove==true then
            MAIN_CAMERA.hasFreeControl=true
        end
    end
    ----------------------------------
end

function Press(_,action,_)
    if (action=="A" or action=="W" or action=="S" or action=="D") and CanMove==true then
        local bString=action.."Blocked"
        if MyCamera:GetCustomProperty(action)>0 and MyCamera:GetCustomProperty(bString)==false then
            Events.Broadcast("BlockInteractions",time()+0.5)
            Move(tostring(MyCamera:GetCustomProperty(action)))
        end
    end
end
Input.actionPressedEvent:Connect(Press)


function BlockMovement(status)
    if status==false then
        CanMove=true
        MAIN_CAMERA:SetWorldRotation(MyCamera:GetRotation())
        MAIN_CAMERA.hasFreeControl=true
    else
        CanMove=false
        MAIN_CAMERA:SetWorldRotation(player:GetViewWorldRotation())
        MAIN_CAMERA.hasFreeControl=false
    end
    UpdateUI()
end
Events.Connect("BlockMovement",BlockMovement)


UpdateUI()