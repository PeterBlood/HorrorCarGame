local USE_VFX = script:GetCustomProperty("UseVFX"):WaitForObject()
local USE_SFX = script:GetCustomProperty("UseSFX"):WaitForObject()
local CAMERA = script:GetCustomProperty("Camera"):WaitForObject()


local Holding=false

local ev1,ev2=nil,nil

function PickedItem(ref)
    local Object=ref:GetObject()
    if Object==CAMERA then
        Holding=true
    else
        Holding=false
    end
end
ev1=Events.Connect("PickedItem",PickedItem)

function KillerDistraction(DistTime)
    if Holding==true then
        Holding=false
        USE_SFX:Play()
        USE_VFX:Play()
        CAMERA:SetWorldRotation(Game.GetLocalPlayer():GetViewWorldRotation())
        ev1:Disconnect()
        ev2:Disconnect()
        Task.Wait(3)
        CAMERA:Destroy()
    end
end
ev2=Events.Connect("KillerDistraction",KillerDistraction)