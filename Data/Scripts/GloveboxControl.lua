---Just animation of opening Glovebox when camera moves in. Use it as example for simillar stuff
--[[Event List--
Events.Connect("OpenGloveBox",true/false) -- true- open / false- close
]]

local DOOR = script:GetCustomProperty("Door"):WaitForObject()
local LIGHT = script:GetCustomProperty("Light"):WaitForObject()


function OpenGloveBox(status)
    if status==true then
        DOOR:RotateTo(Rotation.New(90,0,0),0.5,true)
        LIGHT.visibility=Visibility.FORCE_ON
    else
        DOOR:RotateTo(Rotation.New(0,0,0),0.5,true)
        LIGHT.visibility=Visibility.FORCE_OFF
    end
end
Events.Connect("OpenGloveBox",OpenGloveBox)