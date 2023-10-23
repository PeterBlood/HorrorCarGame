------Generate items, cameras, escape routs and all of that stuff. Work in progress-------
local API_ITEM_LIST = require(script:GetCustomProperty("API_ItemList"))

local GLOVEBOX = script:GetCustomProperty("Glovebox"):WaitForObject()
local RADIO = script:GetCustomProperty("Radio"):WaitForObject()
local CAMERA_POS = script:GetCustomProperty("CameraPos"):WaitForObject()
local LOOT_AREAS = script:GetCustomProperty("LootAreas"):WaitForObject()

local ItemList={}
local EscapeList={}

local GLOVES_CLIENT = script:GetCustomProperty("GlovesClient")
local BOOK_CLIENT = script:GetCustomProperty("BookClient")
local SCREWDRIVER_CLIENT = script:GetCustomProperty("ScrewdriverClient")

_G.PlayerEquipment={}
_G.PlayerEquipment.Gloves=0
_G.PlayerEquipment.Batteries=0

--_G.PhoneBookNumbers[NUMBER][INFO]=0 --NUMBER- string / INFO- 1-DIALOGUE_ID 2-DIALOGUE_PART / 
_G.PhoneBookNumbers={}
_G.PhoneBookNumbers["911"]={}
_G.PhoneBookNumbers["911"][1]=0 --DIALOGUE_ID
_G.PhoneBookNumbers["911"][2]=0 --DIALOGUE_PART
_G.PhoneBookNumbers["911"][3]="In case of an emergency" --Description (for phone book)

--local CAMERA_ID = script:GetCustomProperty("CameraID")
function BlockCamera(Area)
    local camID=Area:GetCustomProperty("CameraID")
    for _,obj in pairs(CAMERA_POS:GetChildren()) do
        local list={"W","A","S","D"}
        for _,dir in pairs(list) do
            if obj:GetCustomProperty(dir)==camID then
                local str=dir.."Blocked"
                obj:SetCustomProperty(str,true)
            end
        end
    end
end
function BlockLootArea(Area)
    for _,obj in pairs(LOOT_AREAS:GetChildren()) do
        if obj.name==tostring(Area) then
            obj:SetCustomProperty("Blocked",true)
            break
        end
    end
end

function GeneratePhoneBookNumbers()
end
function GenerateEscape()
    --[[BlockCamera(RADIO)
    RADIO.visibility=Visibility.FORCE_OFF]]
end
function GenerateLootAreas()
    --[[BlockCamera(GLOVEBOX)
    GLOVEBOX.visibility=Visibility.FORCE_OFF]]
end
--[[ItemList[1]="Gloves"
ItemList[2]="Book"]]

ItemList[1]="Screwdriver"
ItemList[2]="WireCutters"
ItemList[3]="CarManual"
ItemList[4]="HotwireManual"
ItemList[5]="Gloves"

ItemList[6]="Batteries"
ItemList[7]="Phone"
ItemList[8]="PhoneBook"
ItemList[9]="Flashlight"
function GenerateLoot()
    for _,name in pairs(ItemList) do
        ------------PickRandomSpawnPoint----------------
        local spawnPoint=nil
        local allSP={}
        for _,obj in pairs(LOOT_AREAS:FindDescendantsByName("LootSpawnPoint")) do
            if obj:GetCustomProperty("Taken")==false and obj:GetCustomProperty("MyArea"):WaitForObject():GetCustomProperty("Blocked")==false then
                local area=obj:GetCustomProperty("MyArea"):WaitForObject()
                local isGood=true
                for _,Type in pairs(API_ITEM_LIST[name]["Type"]) do
                    if area:GetCustomProperty(Type)==false then
                        isGood=false
                        break
                    end
                end
                if isGood then
                    allSP[#allSP+1]=obj
                end
            end
        end
        spawnPoint=allSP[math.random(#allSP)]
        spawnPoint:SetCustomProperty("Taken",true)
        -----------SpawnPhysicsVersionOfObject---------------
        local str=name.."Physics"
        local pos=spawnPoint:GetWorldPosition()
        local rot=spawnPoint:GetWorldRotation()

        local obj=World.SpawnAsset(script:GetCustomProperty(str),{position=pos,rotation=rot})
        obj:SetCustomProperty("LootAreaID",tonumber(spawnPoint:GetCustomProperty("MyArea"):WaitForObject().name))
    end
end

function GenerateMap()
    GenerateEscape()
    GenerateLootAreas()
    GenerateLoot()
end


GenerateMap()