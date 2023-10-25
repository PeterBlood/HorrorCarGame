--[[Event List--
Events.Connect("PickedItem",ObjectReference) --ObjectReference refers to wich object I picked up
Events.Connect("KillerDistraction",KillerDistraction)
]]

local FLASHLIGHT = script:GetCustomProperty("Flashlight"):WaitForObject()
local OFF = script:GetCustomProperty("OFF"):WaitForObject()
local FL = script:GetCustomProperty("FL"):WaitForObject()

local Holding=false

local ev1,ev2=nil,nil

function PickedItem(ref)
    local Object=ref:GetObject()
    if Object==FLASHLIGHT then
        Holding=true
    else
        Holding=false
    end
end
ev1=Events.Connect("PickedItem",PickedItem)

function KillerDistraction(DistTime)
    if Holding==true then
        Holding=false
        FLASHLIGHT:SetWorldRotation(Game.GetLocalPlayer():GetViewWorldRotation())
        FL.visibility=Visibility.FORCE_ON
        OFF.visibility=Visibility.FORCE_OFF
        ev1:Disconnect()
        ev2:Disconnect()
        Task.Wait(3)
        FLASHLIGHT:Destroy()
    end
end
ev2=Events.Connect("KillerDistraction",KillerDistraction)