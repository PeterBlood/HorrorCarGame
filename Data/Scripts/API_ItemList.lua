local API={}
--[[
    API[ ObjectName ]={}    -- ObjectName- name of an object, needs to match template name
    API[ ObjectName ]["Type"]={}    -- Type- Type defines where object can/can't be spawned, each LootArea has allowed/blocked types. Look at LootArea custom properties to see all types. Can be few different types of object.
    API[ ObjectName ]["Type"][1]=TypeName -- TypeName- Type
    API[ ObjectName ]["Type"][..]=TypeName
    API[ ObjectName ]["Type"][9999]=TypeName
    
    API[ ObjectName ]["Category"]=CategoryName -- Category - this API contains all objects that can be interacted with. Category defines what this object is.
    API[ ObjectName ]["Category"]="Item" -- "Item" - means it's an object you pick up and hold in your hands.
    API[ ObjectName ]["Category"]="Equipment" -- "Equipment" - means it's an object you pick up and it dissapears but adds you some effect. For example Gloves block electricity so you can touch wires for hotwire route.
    API[ ObjectName ]["Category"]="Interactable" -- "Interactable" - means it's an object you can interact with.
]]



--WheelStuff--
API["Bolt"]={}
API["Bolt"]["Category"]="Interactable"
API["SCPanel"]={}
API["SCPanel"]["Category"]="Interactable"
API["Cut1"]={}
API["Cut1"]["Category"]="Interactable"
API["CutPos1"]={}
API["CutPos1"]["Category"]="Interactable"
API["Cut2"]={}
API["Cut2"]["Category"]="Interactable"
API["CutPos2"]={}
API["CutPos2"]["Category"]="Interactable"
API["Cut3"]={}
API["Cut3"]["Category"]="Interactable"
API["CutPos3"]={}
API["CutPos3"]["Category"]="Interactable"
API["Cut4"]={}
API["Cut4"]["Category"]="Interactable"
API["CutPos4"]={}
API["CutPos4"]["Category"]="Interactable"
API["Cut5"]={}
API["Cut5"]["Category"]="Interactable"
API["CutPos5"]={}
API["CutPos5"]["Category"]="Interactable"

--DoorStuff--
API["lock"]={}
API["lock"]["Category"]="Interactable"
API["Handle"]={}
API["Handle"]["Category"]="Interactable"
API["WindowHandle"]={}
API["WindowHandle"]["Category"]="Interactable"
---------------------------------------------------------------
--------Hotwire Route--------
API["Gloves"]={}
API["Gloves"]["Type"]={}
API["Gloves"]["Type"][1]="Small"
API["Gloves"]["Category"]="Equipment"

API["Screwdriver"]={}
API["Screwdriver"]["Type"]={}
API["Screwdriver"]["Type"][1]="Medium"
API["Screwdriver"]["Category"]="Item"

API["WireCutters"]={}
API["WireCutters"]["Type"]={}
API["WireCutters"]["Type"][1]="Medium"
API["WireCutters"]["Category"]="Item"

API["CarManual"]={}
API["CarManual"]["Type"]={}
API["CarManual"]["Type"][1]="Medium"
API["CarManual"]["Type"][2]="Paper"
API["CarManual"]["Category"]="Item"

API["HotwireManual"]={}
API["HotwireManual"]["Type"]={}
API["HotwireManual"]["Type"][1]="Medium"
API["HotwireManual"]["Type"][2]="Paper"
API["HotwireManual"]["Category"]="Item"
--------Phone Route--------
API["Batteries"]={}
API["Batteries"]["Type"]={}
API["Batteries"]["Type"][1]="Small"
API["Batteries"]["Category"]="Equipment"

API["Flashlight"]={}
API["Flashlight"]["Type"]={}
API["Flashlight"]["Type"][1]="Medium"
API["Flashlight"]["Category"]="Item"

API["Phone"]={}
API["Phone"]["Type"]={}
API["Phone"]["Type"][1]="Medium"
API["Phone"]["Category"]="Item"

API["PhoneBook"]={}
API["PhoneBook"]["Type"]={}
API["PhoneBook"]["Type"][1]="Medium"
API["PhoneBook"]["Type"][2]="Paper"
API["PhoneBook"]["Category"]="Item"

return API