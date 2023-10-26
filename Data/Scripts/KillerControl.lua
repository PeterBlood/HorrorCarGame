local KILLER = script:GetCustomProperty("Killer"):WaitForObject()

local DOOR_1 = script:GetCustomProperty("Door1"):WaitForObject()
local DOOR_2 = script:GetCustomProperty("Door2"):WaitForObject()
local DOOR_3 = script:GetCustomProperty("Door3"):WaitForObject()
local DOOR_4 = script:GetCustomProperty("Door4"):WaitForObject()

local KILLER_ACTIVE_SFX = script:GetCustomProperty("KillerActiveSFX"):WaitForObject()
local KILLER_WAIT_SFX = script:GetCustomProperty("KillerWaitSFX"):WaitForObject()
local KILLER_DISTRACTION_SFX = script:GetCustomProperty("KillerDistractionSFX"):WaitForObject()

--[[
    local CAMERA_ID = script:GetCustomProperty("CameraID")
    local NEED_ITEM = script:GetCustomProperty("NeedItem")
    local HOLD_INTERACTION = script:GetCustomProperty("HoldInteraction")
    local BLOCKED = script:GetCustomProperty("Blocked")
]]
--Door1 -30,140,-93
--Door2 30,140,-93
--Door3 -30,110,-93
--Door4 30,110,-93
--[[
    local LOCK = script:GetCustomProperty("Lock") --bool
    local WINDOW = script:GetCustomProperty("Window")   -- int- 0 - 100
    local DOOR = script:GetCustomProperty("Door")   -- int- 0 - 100
]]
local Dead=false
local Stunned=false
local Hidden=true
local CurrentPhase=0
local NextPhase=time()+30
local NextPause=time()


local DoorTime={}
local WindowCD=10
local LockCD=10
local DoorCD=10
local WindowSpeed=0.5

for a=1,4 do
    DoorTime[a]={}
    DoorTime[a]["LockT"]=time()+LockCD
    DoorTime[a]["WindowT"]=time()+WindowCD
    DoorTime[a]["DoorT"]=time()+DoorCD
    DoorTime[a]["JumpT"]=time()+2
end

local CurrentDoorID=0
local RemoteLocks=false
local RemoteWindows=false
local RemoteDoors=false

local Phase={}
Phase[1]={}
Phase[1]["RemoteLocks"]=false
Phase[1]["RemoteWindows"]=false
Phase[1]["RemoteDoors"]=false
Phase[1]["WindowCD"]=10000
Phase[1]["LockCD"]=20
Phase[1]["DoorCD"]=20
Phase[1]["WindowSpeed"]=0.5
Phase[1]["PhaseDuration"]=80
Phase[1]["PauseDuration"]=120
Phase[2]={}
Phase[2]["RemoteLocks"]=true
Phase[2]["RemoteWindows"]=false
Phase[2]["RemoteDoors"]=false
Phase[2]["WindowCD"]=100
Phase[2]["LockCD"]=10
Phase[2]["DoorCD"]=10
Phase[2]["WindowSpeed"]=0.5
Phase[2]["PhaseDuration"]=120
Phase[2]["PauseDuration"]=120
Phase[3]={}
Phase[3]["RemoteLocks"]=true
Phase[3]["RemoteWindows"]=true
Phase[3]["RemoteDoors"]=false
Phase[3]["WindowCD"]=10
Phase[3]["LockCD"]=10
Phase[3]["DoorCD"]=10
Phase[3]["WindowSpeed"]=0.5
Phase[3]["PhaseDuration"]=120
Phase[3]["PauseDuration"]=80
Phase[4]={}
Phase[4]["RemoteLocks"]=true
Phase[4]["RemoteWindows"]=true
Phase[4]["RemoteDoors"]=true
Phase[4]["WindowCD"]=10
Phase[4]["LockCD"]=10
Phase[4]["DoorCD"]=10
Phase[4]["WindowSpeed"]=0.5
Phase[4]["PhaseDuration"]=12000
Phase[4]["PauseDuration"]=120




function Hide()
    if CurrentDoorID~=0 then
        DoorTime[CurrentDoorID]["JumpT"]=time()+2
    end
    local pos=KILLER:GetPosition()
    KILLER:MoveTo(pos+Vector3.New(0,0,-300),0.5,true)
    Hidden=true
    CurrentDoorID=0
    KILLER:SetCustomProperty("CameraID",0)
    Task.Wait(0.5)
end

function JumpToDoor(ID)
    Hidden=false
    if ID==1 then
        KILLER:SetWorldPosition(DOOR_1:GetWorldPosition()+Vector3.New(-30,140,-393))
        KILLER:MoveTo(DOOR_1:GetWorldPosition()+Vector3.New(-30,140,-93),0.5)
        KILLER:SetCustomProperty("CameraID",1)
    elseif ID==2 then
        KILLER:SetWorldPosition(DOOR_2:GetWorldPosition()+Vector3.New(30,140,-393))
        KILLER:MoveTo(DOOR_2:GetWorldPosition()+Vector3.New(30,140,-93),0.5)
        KILLER:SetCustomProperty("CameraID",2)
    elseif ID==3 then
        KILLER:SetWorldPosition(DOOR_3:GetWorldPosition()+Vector3.New(-30,110,-393))
        KILLER:MoveTo(DOOR_3:GetWorldPosition()+Vector3.New(-30,110,-93),0.5)
        KILLER:SetCustomProperty("CameraID",4)
    elseif ID==4 then
        KILLER:SetWorldPosition(DOOR_4:GetWorldPosition()+Vector3.New(30,110,-393))
        KILLER:MoveTo(DOOR_4:GetWorldPosition()+Vector3.New(30,110,-93),0.5)
        KILLER:SetCustomProperty("CameraID",4)
    end
    Task.Wait(0.5)
    DoorTime[ID]["JumpT"]=time()+2
end



function InteractionPress(ref)
    local obj=ref:GetObject()
    for a=1,4 do
        local str="Door"..a
        local Door=script:GetCustomProperty(str):WaitForObject()
        for _,obj1 in pairs(Door:GetChildren()) do
            if obj1==obj then
                if Door:GetCustomProperty("Window")>15 then
                    if a==CurrentDoorID then
                        Hide()
                    end
                    if obj1.name=="lock" then
                        DoorTime[a]["LockT"]=time()+LockCD
                        DoorTime[a]["DoorT"]=time()+DoorCD
                    elseif obj1.name=="Handle" then
                        DoorTime[a]["DoorT"]=time()+DoorCD
                    end
                end
            end
        end
    end
end
function InteractionHold(ref)
    local obj=ref:GetObject()
    for a=1,4 do
        local str="Door"..a
        local Door=script:GetCustomProperty(str):WaitForObject()
        for _,obj1 in pairs(Door:GetChildren()) do
            if obj1==obj and obj1.name=="WindowHandle" then
                if Door:GetCustomProperty("Window")>15 then
                    if a==CurrentDoorID then
                        Hide()
                    end
                    DoorTime[a]["WindowT"]=time()+WindowCD
                end
            end
        end
    end
end
Events.Connect("InteractionHold",InteractionHold)
Events.Connect("InteractionPress",InteractionPress)

function SelectPosition()
    local GoodPos={}
    for a=1,4 do
        local str="Door"..a
        if time()>DoorTime[a]["JumpT"] and time()>DoorTime[a]["DoorT"] and script:GetCustomProperty(str):WaitForObject():GetCustomProperty("Lock")==false then
            GoodPos[#GoodPos+1]=a
        end
    end
    if #GoodPos>0 then
        if #GoodPos>1 then return GoodPos[math.random(#GoodPos)] else return GoodPos[1] end
    end
    local GoodPos={}
    for a=1,4 do
        local str="Door"..a
        if time()>DoorTime[a]["JumpT"] and script:GetCustomProperty(str):WaitForObject():GetCustomProperty("Window")==0 then
            GoodPos[#GoodPos+1]=a
        end
    end
    if #GoodPos>0 then
        if #GoodPos>1 then return GoodPos[math.random(#GoodPos)] else return GoodPos[1] end
    end
    for a=1,4 do
        local str="Door"..a
        if time()>DoorTime[a]["JumpT"] and script:GetCustomProperty(str):WaitForObject():GetCustomProperty("Lock")==false then
            GoodPos[#GoodPos+1]=a
        end
    end
    if #GoodPos>0 then
        if #GoodPos>1 then return GoodPos[math.random(#GoodPos)] else return GoodPos[1] end
    end

    if RemoteLocks==false then
        for a=1,4 do
            local str="Door"..a
            if time()>DoorTime[a]["JumpT"] and time()>DoorTime[a]["LockT"] and script:GetCustomProperty(str):WaitForObject():GetCustomProperty("Lock")==true then
                GoodPos[#GoodPos+1]=a
            end
        end
    end
    if #GoodPos>0 then
        if #GoodPos>1 then return GoodPos[math.random(#GoodPos)] else return GoodPos[1] end
    end

    if RemoteWindows==false then
        for a=1,4 do
            local str="Door"..a
            if time()>DoorTime[a]["JumpT"] and time()>DoorTime[a]["WindowT"] then
                GoodPos[#GoodPos+1]=a
            end
        end
    end
    if #GoodPos>0 then
        if #GoodPos>1 then return GoodPos[math.random(#GoodPos)] else return GoodPos[1] end
    end
    
    for a=1,4 do
        if time()>DoorTime[a]["JumpT"] and time()>DoorTime[a]["WindowT"] or time()>DoorTime[a]["LockT"] then
            return a
        end
    end
    return 0
end

function AdvancePhase()
    if Phase[CurrentPhase+1]~=nil then
        if Stunned==true then
            Stunned=false
        end
        RemoteLocks=Phase[CurrentPhase+1]["RemoteLocks"]
        RemoteWindows=Phase[CurrentPhase+1]["RemoteWindows"]
        RemoteDoors=Phase[CurrentPhase+1]["RemoteDoors"]
        WindowCD=Phase[CurrentPhase+1]["WindowCD"]
        LockCD=Phase[CurrentPhase+1]["LockCD"]
        DoorCD=Phase[CurrentPhase+1]["DoorCD"]
        NextPause=time()+Phase[CurrentPhase+1]["PhaseDuration"]
        NextPhase=time()+Phase[CurrentPhase+1]["PauseDuration"]+Phase[CurrentPhase+1]["PhaseDuration"]
        for a=1,4 do
            DoorTime[a]["LockT"]=time()+LockCD
            DoorTime[a]["WindowT"]=time()+WindowCD
            DoorTime[a]["DoorT"]=time()+DoorCD
        end
        CurrentPhase=CurrentPhase+1
        --print("Advance "..CurrentPhase)
    end
end

function Kill(ID)
    print("AAAAAAAA KILLED")
    Dead=true
    KILLER.visibility=Visibility.FORCE_OFF
    Events.Broadcast("BlockMovement",true)
    Events.Broadcast("StopLooking")
    Events.Broadcast("ReleaseItem")
    Task.Wait(0.5)
    Events.Broadcast("DoorDeath",ID)
end

function Tick()
    if Dead==true then return end
    if time()>NextPause and time()<NextPhase then
        --print("Pause "..NextPhase-time())
        if Hidden==false then
            if Stunned==false then
                KILLER_WAIT_SFX:Play()
            end
            Hide()
        end
    elseif time()>NextPhase then
        if Stunned==false then
            KILLER_ACTIVE_SFX:Play()
        end
        AdvancePhase()
    else
        --print("NextPause "..NextPause-time())
        if CurrentDoorID==0 then
            CurrentDoorID=SelectPosition()
            if CurrentDoorID~=0 then
                JumpToDoor(CurrentDoorID)
            end
        end
        for a=1,4 do
            local str="Door"..a
            if time()>DoorTime[a]["LockT"] and script:GetCustomProperty(str):WaitForObject():GetCustomProperty("Lock")==true and (a==CurrentDoorID or RemoteLocks==true) then
                DoorTime[a]["LockT"]=time()+LockCD+math.random(5)
                script:GetCustomProperty(str):WaitForObject():SetCustomProperty("Lock",false)
                DoorTime[a]["DoorT"]=time()+DoorCD+math.random(5)
            end
            if time()>DoorTime[a]["WindowT"] and (a==CurrentDoorID or RemoteWindows==true) then
                DoorTime[a]["WindowT"]=time()+WindowSpeed
                local pr=script:GetCustomProperty(str):WaitForObject():GetCustomProperty("Window")
                pr=pr-1
                if pr<0 then
                    pr=0
                end
                script:GetCustomProperty(str):WaitForObject():SetCustomProperty("Window",pr)
            end
            if time()>DoorTime[a]["DoorT"] and script:GetCustomProperty(str):WaitForObject():GetCustomProperty("Lock")==false and (a==CurrentDoorID or RemoteDoors==true) then
                DoorTime[a]["DoorT"]=time()+0.2
                local pr=script:GetCustomProperty(str):WaitForObject():GetCustomProperty("Door")
                pr=pr-10
                if pr<0 then
                    pr=0
                end
                script:GetCustomProperty(str):WaitForObject():SetCustomProperty("Door",pr)
            end
        end
    end

    for a=1,4 do
        local str="Door"..a
        if script:GetCustomProperty(str):WaitForObject():GetCustomProperty("Door")<=0 then
            Kill(a)
        end
    end
    Task.Wait(0.1)
end


function KillerDistraction(DistTime)
    Stunned=true
    KILLER_DISTRACTION_SFX:Play()
    Phase[CurrentPhase]["PhaseDuration"]=NextPause-time()
    NextPhase=time()+DistTime
    NextPause=time()-1
    CurrentPhase=CurrentPhase-1
end
Events.Connect("KillerDistraction",KillerDistraction)

function ElectrocutionDeath()
    Dead=true
    KILLER.visibility=Visibility.FORCE_OFF
end
Events.Connect("ElectrocutionDeath",ElectrocutionDeath)