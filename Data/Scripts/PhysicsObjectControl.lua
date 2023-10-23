--------When game starts, first I drop Physics object version of item, after it falls with his physics simulation, I spawn interactable one that locked in place--------
local LOOT_AREAS = script:GetCustomProperty("LootAreas"):WaitForObject()
local GEO = script:GetCustomProperty("Geo"):WaitForObject()
local PHYSICS = script:GetCustomProperty("Physics"):WaitForObject()

local OBJECT = script.parent:GetCustomProperty("Object")

local myArea=nil
local spawnPos=script:GetWorldPosition()
local Start=time()

while myArea==nil do
    for _,obj in pairs(LOOT_AREAS:GetChildren()) do
        if obj.name==tostring(script.parent:GetCustomProperty("LootAreaID")) then
            myArea=obj
            break
        end
    end
    Task.Wait()
end

------------Get distance to area object spawns in--------------
function GetDistanceToArea()
    local AREA = myArea:GetCustomProperty("Area"):WaitForObject()
    local xDist=math.abs(script:GetWorldPosition().x)-math.abs(AREA:GetWorldPosition().x-AREA:GetWorldScale().x*50)
    if xDist>math.abs(script:GetWorldPosition().x)-math.abs(AREA:GetWorldPosition().x+AREA:GetWorldScale().x*50) then
        xDist=math.abs(script:GetWorldPosition().x)-math.abs(AREA:GetWorldPosition().x+AREA:GetWorldScale().x*50)
    end
    if script:GetWorldPosition().x>AREA:GetWorldPosition().x-AREA:GetWorldScale().x*50 and script:GetWorldPosition().x<AREA:GetWorldPosition().x+AREA:GetWorldScale().x*50 then
        xDist=0
    end
    local yDist=math.abs(script:GetWorldPosition().y)-math.abs(AREA:GetWorldPosition().y-AREA:GetWorldScale().y*50)
    if yDist>math.abs(script:GetWorldPosition().y)-math.abs(AREA:GetWorldPosition().y+AREA:GetWorldScale().y*50) then
        yDist=math.abs(script:GetWorldPosition().y)-math.abs(AREA:GetWorldPosition().y+AREA:GetWorldScale().y*50)
    end
    if script:GetWorldPosition().y>AREA:GetWorldPosition().y-AREA:GetWorldScale().y*50 and script:GetWorldPosition().y<AREA:GetWorldPosition().y+AREA:GetWorldScale().y*50 then
        yDist=0
    end
    local zDist=math.abs(script:GetWorldPosition().z)-math.abs(AREA:GetWorldPosition().z-AREA:GetWorldScale().z*50)
    if zDist>math.abs(script:GetWorldPosition().z)-math.abs(AREA:GetWorldPosition().z+AREA:GetWorldScale().z*50) then
        zDist=math.abs(script:GetWorldPosition().z)-math.abs(AREA:GetWorldPosition().z+AREA:GetWorldScale().z*50)
    end
    if script:GetWorldPosition().z>AREA:GetWorldPosition().z-AREA:GetWorldScale().z*50 and script:GetWorldPosition().z<AREA:GetWorldPosition().z+AREA:GetWorldScale().z*50 then
        zDist=0
    end
    return math.sqrt(math.sqrt(xDist^2+yDist^2)+zDist^2)
end
---------------Spawn interactable object without physics simulation---------------------
function SpawnObject()
    local hitResult = World.Raycast(spawnPos, script:GetWorldPosition())
    if hitResult~=nil then
        print(hitResult.other.name)
        CoreDebug.DrawLine(spawnPos, hitResult:GetImpactPosition(), {duration = 20,color = Color.WHITE,thickness = 3})
    end
    local obj=World.SpawnAsset(OBJECT,{position=script:GetWorldPosition(),rotation=script:GetWorldRotation()})
    
    obj:SetCustomProperty("CameraID",myArea:GetCustomProperty("CameraID"))
    obj:SetCustomProperty("DefPos",script:GetWorldPosition())
    obj:SetCustomProperty("DefRot",script:GetWorldRotation())
    script.parent:Destroy()
end
-----------------If object outside of his spawn area or 4sec passed from it's creation - Spawns interactable object--------------------
function Tick()
    if Object.IsValid(script) then
        script:SetWorldPosition(PHYSICS:GetWorldPosition())
        script:SetWorldRotation(PHYSICS:GetWorldRotation())
        GEO:SetWorldPosition(PHYSICS:GetWorldPosition())
        GEO:SetWorldRotation(PHYSICS:GetWorldRotation())
        if Start+4<=time() then
            SpawnObject()
        elseif GetDistanceToArea()>2 then
            SpawnObject()
        end
    else
        return
    end
end
-----------------------------------------------------------------------------------------------------------------------------------