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

function GenerateNumber()
    local str=""
    for a=1,7 do
        str=str..tostring(math.random(10)-1)
    end
    return str
end

_G.PlayerEquipment={}
_G.PlayerEquipment.Gloves=0
_G.PlayerEquipment.Batteries=0
_G.PlayerEquipment.PhoneBook=0

--_G.PhoneBookNumbers[NUMBER][INFO]=0 --NUMBER- string / INFO- 1-DIALOGUE_ID 2-DIALOGUE_PART / 
_G.PhoneBookNumbers={}
_G.PhoneBookNumbers["911"]={}
_G.PhoneBookNumbers["911"][1]=12 --DIALOGUE_ID
_G.PhoneBookNumbers["911"][2]=0 --DIALOGUE_PART
_G.PhoneBookNumbers["911"][3]="In case of an emergency" --Description (for phone book)
local num={}
num[1]=GenerateNumber()
num[2]=GenerateNumber()
num[3]=GenerateNumber()
num[4]=GenerateNumber()
num[5]=GenerateNumber()
num[6]=GenerateNumber()
num[7]=GenerateNumber()
num[8]=GenerateNumber()
num[9]=GenerateNumber()
num[10]=GenerateNumber()
num[11]=GenerateNumber()
function GenerateNumbers()
    local id=nil
    for a=1,11 do
        while num[id]==nil do
            id=math.random(11)
        end
        if id==1 then
            _G.PhoneBookNumbers[num[1]]={}
            _G.PhoneBookNumbers[num[1]][1]=1
            _G.PhoneBookNumbers[num[1]][2]=0
            _G.PhoneBookNumbers[num[1]][3]="Boss"
        elseif id==2 then
            _G.PhoneBookNumbers[num[2]]={}
            _G.PhoneBookNumbers[num[2]][1]=2
            _G.PhoneBookNumbers[num[2]][2]=0
            _G.PhoneBookNumbers[num[2]][3]="Dealer"
        elseif id==3 then
            _G.PhoneBookNumbers[num[3]]={}
            _G.PhoneBookNumbers[num[3]][1]=3
            _G.PhoneBookNumbers[num[3]][2]=0
            _G.PhoneBookNumbers[num[3]][3]="Mrs. Laura"
        elseif id==4 then
            _G.PhoneBookNumbers[num[4]]={}
            _G.PhoneBookNumbers[num[4]][1]=4
            _G.PhoneBookNumbers[num[4]][2]=0
            _G.PhoneBookNumbers[num[4]][3]="Frank"
        elseif id==5 then
            _G.PhoneBookNumbers[num[5]]={}
            _G.PhoneBookNumbers[num[5]][1]=5
            _G.PhoneBookNumbers[num[5]][2]=0
            _G.PhoneBookNumbers[num[5]][3]="Uncle Dave"
        elseif id==6 then
            _G.PhoneBookNumbers[num[6]]={}
            _G.PhoneBookNumbers[num[6]][1]=6
            _G.PhoneBookNumbers[num[6]][2]=0
            _G.PhoneBookNumbers[num[6]][3]="Railroad George"
        elseif id==7 then
            _G.PhoneBookNumbers[num[7]]={}
            _G.PhoneBookNumbers[num[7]][1]=7
            _G.PhoneBookNumbers[num[7]][2]=0
            _G.PhoneBookNumbers[num[7]][3]="Bum"
        elseif id==8 then
            _G.PhoneBookNumbers[num[8]]={}
            _G.PhoneBookNumbers[num[8]][1]=8
            _G.PhoneBookNumbers[num[8]][2]=0
            _G.PhoneBookNumbers[num[8]][3]="Joe"
        elseif id==9 then
            _G.PhoneBookNumbers[num[9]]={}
            _G.PhoneBookNumbers[num[9]][1]=9
            _G.PhoneBookNumbers[num[9]][2]=0
            _G.PhoneBookNumbers[num[9]][3]="Coach"
        elseif id==10 then
            _G.PhoneBookNumbers[num[10]]={}
            _G.PhoneBookNumbers[num[10]][1]=10
            _G.PhoneBookNumbers[num[10]][2]=0
            _G.PhoneBookNumbers[num[10]][3]="Aunt Phillis"
        elseif id==11 then
            _G.PhoneBookNumbers[num[11]]={}
            _G.PhoneBookNumbers[num[11]][1]=11
            _G.PhoneBookNumbers[num[11]][2]=0
            _G.PhoneBookNumbers[num[11]][3]="Tiffany"
        end
        num[id]=nil
    end
end
GenerateNumbers()

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
ItemList[10]="Map"

ItemList[11]="Camera"
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