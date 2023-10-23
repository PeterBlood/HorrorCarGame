--Controls all dialogue system
--[[Event List--
Events.Broadcast(DialogLibrary.context.Dialog[DialogID][DialogPart][a]:sub(b+1,string.len(DialogLibrary.context.Dialog[DialogID][DialogPart][a]))) -- This thing broadcast whatever event it finds inside Dialogue.
Events.BroadcastToServer(DialogLibrary.context.Dialog[DialogID][DialogPart][a]:sub(b+1,string.len(DialogLibrary.context.Dialog[DialogID][DialogPart][a])) , LOCAL_PLAYER) -- This thing broadcast whatever event it finds inside Dialogue.
Events.Broadcast("DialogEnded") -- Tells to all items that dialogue ended

Events.Connect("StartDialog", DIALOGUE_ID,DIALOGUE_PART) -- DIALOGUE_ID- ID of a dialogue that will play  ,DIALOGUE_PART- part where dialogue will start (0- default)
Events.Connect("EndDialog", OnEndDialog) -- ends any dialogues
]]

TextSpeed = script:GetCustomProperty("TextSpeed")
local DialogLibrary = script:GetCustomProperty("DialogLibrary"):WaitForObject()
local NameText = script:GetCustomProperty("NameText"):WaitForObject()
local DialogText = script:GetCustomProperty("DialogText"):WaitForObject()
local DialogPanel = script:GetCustomProperty("DialogPanel"):WaitForObject()
local NamePanel = script:GetCustomProperty("NamePanel"):WaitForObject()
local OptionsPanel = script:GetCustomProperty("OptionsPanel"):WaitForObject()
local PrintTextSound = script:GetCustomProperty("PrintTextSound"):WaitForObject()
local DialogOption = script:GetCustomProperty("DialogOption")
local DialogClose = script:GetCustomProperty("DialogClose"):WaitForObject()
local InstructionText = script:GetCustomProperty("InstructionText"):WaitForObject()
local InstructionText2 = script:GetCustomProperty("InstructionText2"):WaitForObject()
local OptionNumber





local PORTRAIT
local TEXT_LETTER_COLUMN_SIZE = DialogText.fontSize / 2
local TEXT_LETTER_ROW_SIZE = DialogText.fontSize * 2
local LOCAL_PLAYER = Game.GetLocalPlayer()


local anim_counter=0
local DialogTrigger
local currentText = ""
local AnswerText = ""
local DrawText = ""
local DialogPart=0
local DialogID=0
local myControls
local CharID=1
local DialogOptions={}
local DialogOptionID=0
local defMoving
local defCursorVis
local defCursorInteract
local ANIMATED_MESH

if TextSpeed<=0 then
	TextSpeed=0.1
	warn("TextSpeed need to be >0")
end


function Tick()
end


function PrintText(text,TextBox)
	DrawText=""
	CharID=1
	while CharID<=string.len(text) do
		if text:sub(CharID,CharID)=="|" or text:sub(CharID,CharID)=="{" then	break	end
		DrawText=DrawText..text:sub(CharID,CharID)
		CharID=CharID+1
		TextBox.text=DrawText
		PrintTextSound:Play()
		Task.Wait(TextSpeed)
		if DialogPanel.visibility==2 then
			CharID=string.len(text)+1
		end
	end
	DrawText=""
	CharID=1
end

function ResizePanelBasedOnText(text)
    local length = string.len(text)
    local width = DialogPanel.width + DialogText.width
    local column = width / TEXT_LETTER_COLUMN_SIZE
    local row = math.ceil(length / column)

    DialogPanel.height = row * TEXT_LETTER_ROW_SIZE - DialogText.height
end

function NextDialogPart()
	if DialogOptionID==1 then
		
		for a=1,string.len(DialogLibrary.context.Dialog[DialogID][DialogPart][1]) do -- check is there any animations in text, if so count number of symbols for animation
			if DialogLibrary.context.Dialog[DialogID][DialogPart][1]:sub(a,a)=="|" or DialogLibrary.context.Dialog[DialogID][DialogPart][1]:sub(a,a)=="{" then
				anim_counter=string.len(DialogLibrary.context.Dialog[DialogID][DialogPart][1]:sub(a,string.len(DialogLibrary.context.Dialog[DialogID][DialogPart][1])))
				break
			else
				anim_counter=0
			end
		end
		
		if DialogText.text==DialogLibrary.context.Dialog[DialogID][DialogPart][1]:sub(1,string.len(DialogLibrary.context.Dialog[DialogID][DialogPart][1])-anim_counter) then -- if text is printed out
			if DialogLibrary.context.Dialog[DialogID][DialogPart+1][1]~=nil then
				DialogPart=DialogPart+1
				ShowAnswers()
			else
				OnEndDialog()
			end
			currentText=DialogLibrary.context.Dialog[DialogID][DialogPart][1]
				
			ResizePanelBasedOnText(currentText:sub(1,string.len(currentText)-anim_counter))
			PrintText(currentText,DialogText)
		else	-- if text is still printing and there isn't any rage event
			CharID=string.len(DialogLibrary.context.Dialog[DialogID][DialogPart][1])+1
			DrawText=DialogLibrary.context.Dialog[DialogID][DialogPart][1]:sub(1,string.len(DialogLibrary.context.Dialog[DialogID][DialogPart][1])-anim_counter)
			DialogText.text=DrawText
			ResizePanelBasedOnText(DrawText)
		end
	end
end

function CleatDialogOptions()
	for a=0,DialogOptionID do
		if DialogOptions[a]~=nil and Object.IsValid(DialogOptions[a]) then
			DialogOptions[a]:Destroy()
			DialogOptions[a]=nil
		end
	end
	
	DialogOptionID=1
end

function SelectOption(button)
	for a=0,DialogOptionID do
		if button==DialogOptions[a] then
			for b=1,string.len(DialogLibrary.context.Dialog[DialogID][DialogPart][a]) do
				if DialogLibrary.context.Dialog[DialogID][DialogPart][a]:sub(b,b)=="|" then
					CharID=string.len(DialogLibrary.context.Dialog[DialogID][DialogPart][1])+1
					Task.Wait(TextSpeed*2)
					
					DialogID=tonumber(DialogLibrary.context.Dialog[DialogID][DialogPart][a]:sub(b+1,string.len(DialogLibrary.context.Dialog[DialogID][DialogPart][a])))
					DialogPart=0
					CleatDialogOptions()
					NextDialogPart()
					break
				elseif DialogLibrary.context.Dialog[DialogID][DialogPart][a]:sub(b,b)=="{" then
					CharID=string.len(DialogLibrary.context.Dialog[DialogID][DialogPart][1])+1
					Task.Wait(TextSpeed*2)
					
					if DialogLibrary.context.Dialog[DialogID][DialogPart][a]:sub(b+1,string.len(DialogLibrary.context.Dialog[DialogID][DialogPart][a]))~="EndDialog" then
						Events.Broadcast(DialogLibrary.context.Dialog[DialogID][DialogPart][a]:sub(b+1,string.len(DialogLibrary.context.Dialog[DialogID][DialogPart][a])))
						CleatDialogOptions()
						NextDialogPart()
					else
						Events.Broadcast(DialogLibrary.context.Dialog[DialogID][DialogPart][a]:sub(b+1,string.len(DialogLibrary.context.Dialog[DialogID][DialogPart][a])))
						CleatDialogOptions()
					end
					break
				elseif DialogLibrary.context.Dialog[DialogID][DialogPart][a]:sub(b,b)=="}" then
					CharID=string.len(DialogLibrary.context.Dialog[DialogID][DialogPart][1])+1
					Task.Wait(TextSpeed*2)
					
					Events.BroadcastToServer(DialogLibrary.context.Dialog[DialogID][DialogPart][a]:sub(b+1,string.len(DialogLibrary.context.Dialog[DialogID][DialogPart][a])) , LOCAL_PLAYER)
					CleatDialogOptions()
					NextDialogPart()
					break
				elseif b==string.len(DialogLibrary.context.Dialog[DialogID][DialogPart][a]) then
					CharID=string.len(DialogLibrary.context.Dialog[DialogID][DialogPart][1])+1
					CleatDialogOptions()
					Task.Wait(TextSpeed*2)
					
					NextDialogPart()
				end
			end
			break
		end
	end
	
end

function ShowAnswers()
	DialogOptionID=1
	while DialogLibrary.context.Dialog[DialogID][DialogPart][DialogOptionID+1]~=nil do
		AnswerText=""
		
		DialogOptions[DialogOptionID+1]=World.SpawnAsset(DialogOption, {parent = OptionsPanel})
		
		OptionNumber = DialogOptions[DialogOptionID+1]:GetCustomProperty("OptionNumber"):WaitForObject()
		OptionNumber.text=tostring(DialogOptionID)
		if myControls~="keyboard" then
			OptionNumber.visibility=Visibility.FORCE_OFF
		else
			OptionNumber.visibility=Visibility.INHERIT
		end
		
		DialogOptions[DialogOptionID+1].y=(DialogOptionID-1)*(-70)
		for a=1,string.len(DialogLibrary.context.Dialog[DialogID][DialogPart][DialogOptionID+1]) do
			if DialogLibrary.context.Dialog[DialogID][DialogPart][DialogOptionID+1]:sub(a,a)=="|" or DialogLibrary.context.Dialog[DialogID][DialogPart][DialogOptionID+1]:sub(a,a)=="{" or DialogLibrary.context.Dialog[DialogID][DialogPart][DialogOptionID+1]:sub(a,a)=="}" then
				break
			else
				AnswerText=AnswerText..DialogLibrary.context.Dialog[DialogID][DialogPart][DialogOptionID+1]:sub(a,a)
			end
		end
		DialogOptions[DialogOptionID+1].text=AnswerText
		DialogOptions[DialogOptionID+1].clickedEvent:Connect(SelectOption)
		DialogOptionID=DialogOptionID+1
	end
end

function OnEndDialog()
	if DialogOptionID~=1 then
		for a=0,DialogOptionID do
			if DialogOptions[a]~=nil and Object.IsValid(DialogOptions[a]) then
				DialogOptions[a]:Destroy()
				DialogOptions[a]=nil
			end
		end
		DialogOptionID=1
	end
	
	DialogPart=0
	DialogPanel.visibility=Visibility.FORCE_OFF
	Events.Broadcast("DialogEnded")
end

function OnStartDialog(DIALOGUE_ID,DIALOGUE_PART)
	CONTROLS="keyboard"
	if DialogPanel.visibility~=2 then
		OnEndDialog()
		Task.Wait(0.5)
	end
	DialogPart=DIALOGUE_PART
	DialogID=DIALOGUE_ID
	

	--[[if NAME~=nil and NAME~="" then
		NamePanel.visibility=Visibility.INHERIT
		NameText.text=NAME
	else]]
		NamePanel.visibility=Visibility.FORCE_OFF
	--end
	
	if CONTROLS=="mouse" then
		myControls="mouse"
		UI.SetCursorVisible(true)
		UI.SetCanCursorInteractWithUI(true)
		InstructionText.text="Click [LMB] to continue"
		InstructionText2.visibility=Visibility.FORCE_OFF
		DialogClose.visibility=Visibility.INHERIT
	elseif CONTROLS=="keyboard" then
		myControls="keyboard"
		InstructionText.text="Press [Space] to continue"
		InstructionText2.visibility=Visibility.INHERIT
		DialogClose.visibility=Visibility.FORCE_OFF
	end
	
	DialogPanel.visibility=Visibility.INHERIT
	ShowAnswers()
	
	NextDialogPart()
	currentText=DialogLibrary.context.Dialog[DialogID][DialogPart][1]
	
	ResizePanelBasedOnText(currentText)
	PrintText(currentText,DialogText)
end


Events.Connect("StartDialog", OnStartDialog)
Events.Connect("EndDialog", OnEndDialog)

function ActionPress(_,action,_)
	if DialogPanel.visibility~=2 then
		if action == "LMB" or action=="Space" then
			NextDialogPart()
		end
		
		if action == "1" then
			if DialogOptions[2]~=nil and Object.IsValid(DialogOptions[2]) then
				SelectOption(DialogOptions[2])
			else
				NextDialogPart()
			end
		end
		if action == "2" then
			if DialogOptions[3]~=nil and Object.IsValid(DialogOptions[3]) then
				SelectOption(DialogOptions[3])
			else
				NextDialogPart()
			end
		end
		if action == "3" then
			if DialogOptions[4]~=nil and Object.IsValid(DialogOptions[4]) then
				SelectOption(DialogOptions[4])
			else
				NextDialogPart()
			end
		end
		if action == "4" then
			if DialogOptions[5]~=nil and Object.IsValid(DialogOptions[5]) then
				SelectOption(DialogOptions[5])
			else
				NextDialogPart()
			end
		end
		if action == "5" then
			if DialogOptions[6]~=nil and Object.IsValid(DialogOptions[6]) then
				SelectOption(DialogOptions[6])
			else
				NextDialogPart()
			end
		end
		if action == "6" then
			if DialogOptions[7]~=nil and Object.IsValid(DialogOptions[7]) then
				SelectOption(DialogOptions[7])
			else
				NextDialogPart()
			end
		end
		if action == "7" then
			if DialogOptions[8]~=nil and Object.IsValid(DialogOptions[8]) then
				SelectOption(DialogOptions[8])
			else
				NextDialogPart()
			end
		end
		if action == "8" then
			if DialogOptions[9]~=nil and Object.IsValid(DialogOptions[9]) then
				SelectOption(DialogOptions[9])
			else
				NextDialogPart()
			end
		end
		if action == "9" then
			if DialogOptions[10]~=nil and Object.IsValid(DialogOptions[10]) then
				SelectOption(DialogOptions[10])
			else
				NextDialogPart()
			end
		end
		if action == "Backspace" then
			OnEndDialog()
		end
	end
end
Input.actionPressedEvent:Connect(ActionPress)