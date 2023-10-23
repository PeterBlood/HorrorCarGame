--[[Event List--
Events.Connect("InteractionPress",ObjectReference) --ObjectReference refers to wich object I'm interacting with
Events.Connect("InteractionHold",ObjectReference) --ObjectReference refers to wich object I'm interacting with
Events.Connect("ReleaseInteraction")
]]
local LOCK = script:GetCustomProperty("lock"):WaitForObject()
local WINDOW_HANDLE = script:GetCustomProperty("WindowHandle"):WaitForObject()
local HANDLE = script:GetCustomProperty("Handle"):WaitForObject()
local DOOR = script:GetCustomProperty("Door"):WaitForObject()
local WINDOW = script:GetCustomProperty("Window"):WaitForObject()

local LockT=0
local WindowT=0
local DoorT=0

local HoldInProgress=false
--------------Updating door visuals(Move, Rotate and stuff)-------------------
function UpdateLock()
    if DOOR:GetCustomProperty("Lock")==true then
        LOCK:SetPosition(Vector3.New(-31.391,150.765,53.653))
    else
        LOCK:SetPosition(Vector3.New(-38.967,150.765,60.053))
    end
end
function UpdateWindow()
    WINDOW_HANDLE:StopRotate()
    WINDOW_HANDLE:RotateTo(Rotation.New(DOOR:GetCustomProperty("Window")*(1080/100),0,0),0.5,true)

    WINDOW:StopMove()
    local ogPos=Vector3.New(-40.668,105.417,91.866)
    local endPos=Vector3.New(-0.858,105.68,25.366)
    local diffPos=nil
    if DOOR.name=="Door3" or DOOR.name=="Door4" then
        ogPos=Vector3.New(-37.837,71.906,92.255)
        endPos=Vector3.New(3.072,73.459,26.933)
    end
    diffPos=endPos-ogPos
    WINDOW:MoveTo(endPos-diffPos/100*DOOR:GetCustomProperty("Window"),0.5,true)
end
function UpdateDoor()
    local rot=Rotation.New(0,0,20-DOOR:GetCustomProperty("Door")*(20/100))
    if DOOR.name=="Door2" or DOOR.name=="Door4" then
        rot=Rotation.New(0,0,(20-DOOR:GetCustomProperty("Door")*(20/100))*-1)
    end

    DOOR:StopRotate()
    if DOOR:GetCustomProperty("Door")==100 then
        DOOR:RotateTo(rot,0.1)
    else
        DOOR:RotateTo(rot,0.3)
    end
end

function Change(_,prop)
    if prop=="Lock" then
        UpdateLock()
    elseif prop=="Window" then
        UpdateWindow()
    elseif prop=="Door" then
        UpdateDoor()
    end
end
DOOR.customPropertyChangedEvent:Connect(Change)

------------Update door state from player interactions------------------
function InteractionPress(ref)
    local obj=ref:GetObject()
    if obj==LOCK and DOOR:GetCustomProperty("Door")==100 and DOOR:GetCustomProperty("Lock")==false then
        DOOR:SetCustomProperty("Lock",true)
        --LockT=time()+10----------------Timing out this killer interaction. move it into killer AI when I make one, and put here event to call it
        --DoorT=time()+10----------------Timing out this killer interaction. move it into killer AI when I make one, and put here event to call it
    end
    if obj==HANDLE and DOOR:GetCustomProperty("Door")<100 then
        DOOR:SetCustomProperty("Door",100)
        --DoorT=time()+10----------------Timing out this killer interaction. move it into killer AI when I make one, and put here event to call it
    end
end
function InteractionHold(ref)
    local obj=ref:GetObject()
    if obj==WINDOW_HANDLE then
        --WindowT=time()+10----------------Timing out this killer interaction. move it into killer AI when I make one, and put here event to call it
        HoldInProgress=true
        while HoldInProgress==true do
            local pr=DOOR:GetCustomProperty("Window")+5
            if pr>100 then
                pr=100
            end
            DOOR:SetCustomProperty("Window",pr)
            Task.Wait(0.2)
        end
    end
end
function ReleaseInteraction()
    if HoldInProgress==true then
        HoldInProgress=false
    end
end
Events.Connect("InteractionHold",InteractionHold)
Events.Connect("ReleaseInteraction",ReleaseInteraction)
Events.Connect("InteractionPress",InteractionPress)

--[[--------Opening all doors, locks and windows. Move it to killer AI when I'll make one--------------
function Tick()
    if time()>=LockT+15 and DOOR:GetCustomProperty("Lock")==true then
        LockT=time()
        DOOR:SetCustomProperty("Lock",false)
        DoorT=time()+10
    end
    if time()>=WindowT+0.5 then
        WindowT=time()
        local pr=DOOR:GetCustomProperty("Window")
        pr=pr-1
        if pr<0 then
            pr=0
        end
        DOOR:SetCustomProperty("Window",pr)
    end
    if time()>=DoorT+0.2 and DOOR:GetCustomProperty("Lock")==false then
        DoorT=time()
        local pr=DOOR:GetCustomProperty("Door")
        pr=pr-10
        if pr<0 then
            pr=0
        end
        DOOR:SetCustomProperty("Door",pr)
    end
    Task.Wait(0.1)
end
------------------------------------------------------------------------------------------------------]]