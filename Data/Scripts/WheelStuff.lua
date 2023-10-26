local HEADLIGHTS_SWITCH = script:GetCustomProperty("HeadlightsSwitch"):WaitForObject()
local WINDSHIELDS_SWITCH = script:GetCustomProperty("WindshieldsSwitch"):WaitForObject()

local WIPER_1 = script:GetCustomProperty("Wiper1"):WaitForObject()
local WIPER_2 = script:GetCustomProperty("Wiper2"):WaitForObject()
local HEADLIGHTS_1 = script:GetCustomProperty("Headlights1"):WaitForObject()
local HEADLIGHTS_2 = script:GetCustomProperty("Headlights2"):WaitForObject()
local LEAVER_CLICK_SFX = script:GetCustomProperty("LeaverClickSFX"):WaitForObject()
local WHIPERS_SFX = script:GetCustomProperty("WhipersSFX"):WaitForObject()

local WiperMode=0   -- 0- Off / 1- Slow / 2- Fast
local UpdateWiperMode=false
local BlockWiperMode=false
local HeadlightsMode=0   -- 0- Off / 1- Close / 2- Far

local WipersPlay=false

local Speed,W1,W2=0.4,0.5,0.5
function WipersLoop()
    while true do
        if WiperMode==0 then Task.Wait(0.2) 
        else
            --WHIPERS_SFX:Stop()
            --WHIPERS_SFX:Play()
            WIPER_1:StopRotate()
            WIPER_1:RotateTo(Rotation.New(0,0,0),Speed,true)
            WIPER_2:StopRotate()
            WIPER_2:RotateTo(Rotation.New(4.658,0.408,20.348),Speed,true)
            Task.Wait(W1)--1.2
            WHIPERS_SFX:Stop()
            WHIPERS_SFX:Play()
            WIPER_1:StopRotate()
            WIPER_1:RotateTo(Rotation.New(78.641,77.981,116.558),Speed,true)
            WIPER_2:StopRotate()
            WIPER_2:RotateTo(Rotation.New(59.945,78.014,124.626),Speed,true)
            Task.Wait(W2)--2.2
        end
    end
end

function ChangeWipersMode()
    LEAVER_CLICK_SFX:Play()
    local mode=WiperMode+1
    if mode>2 then  mode=0  end

    Speed=1
    W1=1.2
    W2=2.2
    if mode==2 then
        Speed,W1,W2=0.4,0.5,0.5
    end
    WiperMode=mode
    if WipersPlay==false then
        WipersPlay=true
        WipersLoop()
    end
    --[[
    if BlockWiperMode==true or mode==WiperMode then return end
    UpdateWiperMode=true
    BlockWiperMode=true
    for a=1,30 do
        Task.Wait(0.1)
        if UpdateWiperMode==false then break end
    end
    BlockWiperMode=false
    UpdateWiperMode=false
    WiperMode=mode
    if mode==0 then return end
    local Speed=1
    local W1=1.2
    local W2=2.2
    if mode==2 then
        Speed,W1,W2=0.4,0.5,0.5
    end
    while true do
        --WHIPERS_SFX:Stop()
        --WHIPERS_SFX:Play()
        WIPER_1:StopRotate()
        WIPER_1:RotateTo(Rotation.New(0,0,0),Speed,true)
        WIPER_2:StopRotate()
        WIPER_2:RotateTo(Rotation.New(4.658,0.408,20.348),Speed,true)
        Task.Wait(W1)--1.2
        WHIPERS_SFX:Stop()
        WHIPERS_SFX:Play()
        WIPER_1:StopRotate()
        WIPER_1:RotateTo(Rotation.New(78.641,77.981,116.558),Speed,true)
        WIPER_2:StopRotate()
        WIPER_2:RotateTo(Rotation.New(59.945,78.014,124.626),Speed,true)
        if UpdateWiperMode==true then UpdateWiperMode=false return end
        Task.Wait(W2)--2.2
        if UpdateWiperMode==true then UpdateWiperMode=false return end
    end]]
end
Events.Connect("ChangeWipersMode",ChangeWipersMode)

function ChangeHeadlightsMode()
    LEAVER_CLICK_SFX:Play()
    local mode=HeadlightsMode+1
    if mode>2 then  mode=0  end
    if mode==HeadlightsMode then return end
    if mode==0 then
        HEADLIGHTS_1.visibility=Visibility.FORCE_OFF
        HEADLIGHTS_2.visibility=Visibility.FORCE_OFF
    elseif mode==1 then
        HEADLIGHTS_1.visibility=Visibility.INHERIT
        HEADLIGHTS_2.visibility=Visibility.FORCE_OFF
    elseif mode==2 then
        HEADLIGHTS_1.visibility=Visibility.FORCE_OFF
        HEADLIGHTS_2.visibility=Visibility.INHERIT
    end
    HeadlightsMode=mode
end
Events.Connect("ChangeHeadlightsMode",ChangeHeadlightsMode)


------------Update state from player interactions------------------
function InteractionPress(ref)
    local obj=ref:GetObject()
    if obj==WINDSHIELDS_SWITCH then
        Events.Broadcast("ChangeWipersMode")
    elseif obj==HEADLIGHTS_SWITCH then
        Events.Broadcast("ChangeHeadlightsMode")
    end
end
Events.Connect("InteractionPress",InteractionPress)