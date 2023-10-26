--======================--How to use--=====================
--By default it can contain 1930 different dialogs with 100 different parts, but you can change that number below.
--You got few options to modify your dialog | AddText | AddRageID | AddAnswer |
--You can add more portrait settings below to change portraits look.
--Portrait settings contain 2 values: position and rotation.
--	Portraits[SettID][1] - position
--	Portraits[SettID][2] - rotation

--======================--AddText--========================
-- Example | AddText(0,"Some text") |
-- This option add text to selected dialog | AddText(Dialog ID,Text to add) |
-- You can set animation for specific dialog part, to do that you will need to use | symbol and type animation name. Example | AddText(0,"Hello! |unarmed_wave")
-- In example above will be used unarmed_wave animation in that dialog part.
-- Also you can change portrait settings with using { symbol, and type setting id after. Example | AddText(0,"Hello!{2")
-- } - this symbol will use Events.BroadcastToPlayer function, to broadcast writen event. Example | AddText(0,"Yes}EndDialog") |
-- In example above portrait will change his position and rotation according to values in portraits settings with ID 2.

--======================--AddRageID--======================
-- Example | AddRageID(0,"1") |
-- This option will start other dialog if player will skip dialog before it prints out. | AddRageID(ID of current dialog, ID of dialog that will start for skipping) |
-- AddRageID function ties up to last text in selected dialog so it should be placed after text it was meant for. Example 	| AddText(0,"First text") 	|
--												 																	 		| AddRageID(0,"1") 			|
--												 																	 		| AddText(0,"Second text")	|
-- In this example if player skip First text, rage event will trigger and start dialog with ID 1, but if player skip Second text nothing will happen.
--======================--AddAnswer--======================
-- Example | AddAnswer(0,"No") |
-- This option will create option to choose for player. | AddAnswer(ID of current dialog , Text in option text box) |
-- This function ties up to last text in selected dialog like AddRageID.
-- You can set consequences for options, to do that you will need to use special symbols |{} in Text part. Example | AddAnswer(0,"No|2") |
-- | - this symbol will start other dialog, in example above, for choosing this option will be started dialog with ID 2
-- { - this symbol will use Events.BroadcastToPlayer function, to broadcast writen event. Example | AddAnswer(0,"Yes{EndDialog") |
-- In example above, for choosing this option will be broadcasted to client event EndDialog .
-- } - this symbol will use Events.BroadcastToServer function, to broadcast writen event with player variable. Example | AddAnswer(0,"Yes}SomeEvent") |
-- In example above, for choosing this option will be broadcasted to server event SomeEvent, with player that broadcast this event.
--=========================================================

Dialog={}	-- Dialog[DialogID][DialogPart][PlayerReply or Text]

--=================================--Increasing dialogs limit--==========================================
for a=0,1930 do		-- You can freely change this numbers, just make shure that number of your loops <= 193000, or you will receive infinit loop error that will break script.
	Dialog[a]={}
	for b=0,100 do
		Dialog[a][b]={}
	end
end
--======================================================================================================
Portraits={}
for a=1,100 do
	Portraits[a]={}
end

function AddText(id,text)
-------- Find current dialogue part id-----------
	local TextFilled=0
	for a=0,10000 do
		if Dialog[id][TextFilled][1]~=nil then
			TextFilled=TextFilled+1
		else	break	end
	end
-------------------------------------------
	Dialog[id][TextFilled][1]=text	-- Fill current dialogue part
end

function AddAnswer(id,text)
-------- Find current dialogue part id-----------
	local TextFilled=0
	for a=0,10000 do
		if Dialog[id][TextFilled+1][1]~=nil then
			TextFilled=TextFilled+1
		else	break	end
	end
-------------------------------------------------
-------- Find current dialogue part id-----------
	local AnswerID=1
	for a=0,10000 do
		if Dialog[id][TextFilled][AnswerID]~=nil then
			AnswerID=AnswerID+1
		else	break	end
	end
-------------------------------------------------
	Dialog[id][TextFilled][AnswerID]=text	-- Fill current answer
end

function AddRageID(id,RageID)
-------- Find current dialogue part id-----------
	local TextFilled=0
	for a=0,10000 do
		if Dialog[id][TextFilled+1][1]~=nil then
			TextFilled=TextFilled+1
		else	break	end
	end
-------------------------------------------
	Dialog[id][TextFilled][0]=RageID	-- Fill current dialogue part
end


--=======ADD-PORTRAITS-SETTINGS==============
Portraits[1][1]=Vector3.New(50,-30,-90)
Portraits[1][2]=Rotation.New(0,0,130)

Portraits[2][1]=Vector3.New(150,-10,-65)
Portraits[2][2]=Rotation.New(0,0,160)

Portraits[3][1]=Vector3.New(150,0,-65)
Portraits[3][2]=Rotation.New(0,0,180)

Portraits[4][1]=Vector3.New(20,0,-90)
Portraits[4][2]=Rotation.New(0,0,180)
--===========================================

--================ADD-DIALOGS======================
AddText(1,"*click*}TextColor0")
AddText(1,"Hey, Bob, it's John. I'm really sorry to bother you, but I'm in a bit of a situation here.}TextColor44")
AddText(1,"John? What's going on? I thought I was informed that you called out sick today.}TextColor1")
AddText(1,"Yeah, about that… I, um, had a change of plans. I wasn't feeling well, but now I'm actually camping in the Fort William campsite, And, well, I need some help.}TextColor44")
AddText(1,"You're camping, John? You're not exactly making a good case for your sickness excuse.}TextColor1")
AddText(1,"I know, Bob, I'm really sorry, but I can explain later. Right now, I'm stuck here. My car broke down, and there's no one around to help, and I think that serial killer is on the loose in this area.}TextColor44")
AddText(1,"You're stranded? Well, where are you exactly?}TextColor1")
AddText(1,"I'm at Fort Williams Campground, not far from the entrance. I am on the main road in a blue sedan.}TextColor44")
AddText(1,"Fort Williams huh? What a coincidence. I'm actually camping there too. Just a short walk from the entrance. Tell me what happened with your car.}TextColor1")
AddText(1,"Seriously? You're here? That's…unexpected. My car just started making these weird noises and then conked out. I don't have a clue what's wrong with it.}TextColor44")
AddText(1,"Well, I'm not a mechanic, and I don’t have any tools with me, but I suppose I could take a look. I’m not sure how much help I can be though. I’m on foot and youre about a mile away so itll take me about a half hour to get to you.}TextColor1")
AddText(1,"I guess Ill try calling someone else then. Thanks for being willing to help though, and Ill explain everything next time I see you. If I get out of this situation that is.}TextColor44")
AddText(1,"Do you want me to call the cops for you?}TextColor1")
AddText(1,"No, I'll call them myself and give them my location. Thanks anyway.}TextColor44")
AddText(1,"Alright well take care John. I hope everything works out.}TextColor1")
AddText(1,"*beep*}TextColor0")
Task.Wait(0.1)
AddText(2,"*click*}TextColor0")
AddText(2,"Earl, it's John. I know this is a long shot, but I'm in real trouble. My car broke down in the woods, and I'm stuck here. I don't know who else to call.}TextColor44")
AddText(2,"John? You sure you wanna be callin' me for help? You know my reputation, right?}TextColor2")
AddText(2,"I do, Earl, but I'm desperate here. I don't have any other options. I can't reach anyone else, and it's getting dark.}TextColor44")
AddText(2,"Where are you exactly?}TextColor2")
AddText(2,"Thank you, Earl. I'm at the Fort William campsite just near MapleRidge Park, about five miles from the railroad tracks. You can't miss my car, it's a blue sedan.}TextColor44")
AddText(2,"Oh no way man, that’s like a mile away, I’ve got better things to do.}TextColor2")
AddText(2,"*beep*}TextColor0")
Task.Wait(0.1)
AddText(3,"*click*}TextColor0")
AddText(3,"Hello? Is this Mrs. Anderson, my old art teacher?}TextColor44")
AddText(3,"Oh, John? It's been a while! How can I help you?}TextColor3")
AddText(3,"Mrs. Anderson, you won't believe what's happening. I'm camping in a forest not far from your town, and my car just broke down. I've heard there's a serial killer in the area. I'm really scared and need help.}TextColor44")
AddText(3,"Oh, dear. I wish I could help you right away, but I'm in a bit of a bind. They're remodeling my art studio, and I've got workers here for the next two hours.}TextColor3")
AddText(3,"Two hours? I don't know if I can wait that long with all this anxiety.}TextColor44")
AddText(3,"I understand, John, and I'm truly sorry, but I can't leave right now. If you have a working phone signal, maybe you can try calling a tow truck or the local authorities for help.}TextColor3")
AddText(3,"I tried, but the signal is really weak out here, and my phone's running low on battery.}TextColor44")
AddText(3,"In that case, try to find a safe spot and lock your car. Keep your phone off and save the battery. I promise to come help as soon as the workers finish up here. Your safety is important, John.}TextColor3")
AddText(3,"I appreciate your concern, Mrs. Anderson. I'll do my best to stay safe. Please hurry as soon as you can.}TextColor44")
AddText(3,"I will, John. Hang in there, and stay safe. I'll be there as soon as possible.}TextColor3")
AddText(3,"*beep*}TextColor0")
Task.Wait(0.1)
AddText(4,"*click*}TextColor0")
AddText(4,"Hello? Is this Franklin Moore, the retired firefighter?}TextColor44")
AddText(4,"Yes, this is Franklin. Who's this?}TextColor4")
AddText(4,"My name's John, and I'm in a really bad situation. I'm camping in the woods, and my car just broke down. But that's not even the worst part. On the radio, they announced there's a serial killer loose in the area!}TextColor44")
AddText(4,"Take a deep breath, John. I'm here to help. First, I need to know your exact location and any landmarks around you.}TextColor4")
AddText(4,"I'm at the Fort William Campsite, near Maple Ridge Park about 5 miles from the railroad tracks. My car is on the main road, it’s a blue sedan.}TextColor44")
AddText(4,"Got it. Stay calm, John. If you're near the tracks, it should be relatively safe. Lock your car, and stay inside for now.}TextColor4")
AddText(4,"But what if the killer comes this way? I'm really scared!}TextColor44")
AddText(4,"I understand your fear, John. But remember, I'm a retired firefighter, and I know a thing or two about handling emergencies. Your best bet right now is to stay put, keep the doors locked,  and keep your phone handy.}TextColor4")
AddText(4,"What should I do if I see or hear something suspicious?}TextColor44")
AddText(4,"If you see or hear anything suspicious, try to distract him with some bright light or something until I get there.}TextColor4")
AddText(4,"Okay, I'll do that. Thank you, Mr. Moore.}TextColor44")
AddText(4,"You're welcome, John. I'm going to stay on the line with you until you're safe. We'll get through this together.}TextColor4")
AddText(4,"*beep*}TextColor0")
Task.Wait(0.1)
AddText(5,"*click*}TextColor0")
AddText(5,"*nervously* Hey, Uncle Dave, it's John. I'm in a really tight spot.}TextColor44")
AddText(5,"John, how's it going? What's going on?}TextColor5")
AddText(5,"I'm camping at Fort William Campsite, and my car just broke down. To make matters worse, they announced on the radio that there's a serial killer on the loose in this area.}TextColor44")
AddText(5,"Oh, man, that's a tough situation. I wish I could come over and help you, but you know about my diving accident. I can't even walk or drive for the next two weeks.}TextColor5")
AddText(5,"I know, Uncle Dave. I wouldn't have called if I had any other options. I'm really scared, and I don't know what to do.}TextColor44")
AddText(5,"I understand, John. First, lock your car and try to find a safe spot nearby. Stay hidden and keep your phone with you. If you see anything suspicious, call 911 immediately.}TextColor5")
AddText(5,"I'll do that, but it's just really unnerving. I was hoping you could come out and help me with the car.}TextColor44")
AddText(5,"I wish I could, but right now, I can't. You could try calling a tow truck or a local mechanic, if you can get a signal.}TextColor5")
AddText(5,"My phone's battery is getting low, and the signal out here is weak. I'm not sure how long it'll last.}TextColor44")
AddText(5,"I get it, John. Do your best to conserve your battery. And remember, stay safe, keep the car locked, and if you feel threatened, call 911 right away.}TextColor5")
AddText(5,"Thanks, Uncle Dave. I'll follow your advice. Just wish you could be here to help me out.}TextColor44")
AddText(5,"I wish I could too, John. Hang in there, and we'll figure this out. Keep your head on, and don't take any unnecessary risks. We'll talk again soon.}TextColor5")
AddText(5,"*beep*}TextColor0")
Task.Wait(0.1)
AddText(6,"*click*}TextColor0")
AddText(6,"Hello? Is this George Jackson, the Railroad Conductor?}TextColor44")
AddText(6,"Yeah, this is George. Who's calling?}TextColor6")
AddText(6,"My name's John, and I'm in a real jam. I'm camping at Fort William Campsite, and my car just died. It's terrible, and on top of that, they've announced on the radio that there's a serial killer out here in the woods.}TextColor44")
AddText(6,"That sounds like a nightmare, John. I'd like to help, but I'm on my shift right now, and I won't be off for another six hours. Is there anyone else you can call for assistance?}TextColor6")
AddText(6,"I tried calling a tow truck and the local authorities, but my cell signal is really weak out here, and I couldn't get through to anyone.}TextColor44")
AddText(6,"I understand the situation is tough, but I can't leave work. It's a safety issue for the trains and passengers, and my duty is to ensure their safety.}TextColor6")
AddText(6,"I get it, George. I wouldn't want you to jeopardize your job or the safety of others. I'm just really scared and didn't know what else to do.}TextColor44")
AddText(6,"I understand, John. Try to find a safe spot, lock your car, and stay hidden. If you hear or see anything suspicious, call 911 immediately. They should be able to help you.}TextColor6")
AddText(6,"Thanks, George. I'll follow your advice. I'll just have to hunker down and wait for help to arrive.}TextColor44")
AddText(6,"*beep*}TextColor0")
Task.Wait(0.1)
AddText(7,"*click*}TextColor0")
AddText(7,"Sam, it's John. I need your help. I'm camping at Fort William Campsite, and my car just broke down. It's terrible, and they announced on the radio that there's a serial killer in the area.}TextColor44")
AddText(7,"Hey, John. Wow, long time no talk. I'd love to help, but I'm in the middle of this video game tournament. The grand prize is $5000, and I'm about to go to the final round. If I leave, I'll blow my chance to win.}TextColor7")
AddText(7,"I know, Sam, it's just that I'm really scared out here. I don't know what to do, and there's nobody else I can reach.}TextColor44")
AddText(7,"I get it, John, but this tournament means a lot to me. Can't you call a tow truck or someone else for help?}TextColor7")
AddText(7,"I tried calling a tow truck, but the signal out here is terrible, and I couldn't reach anyone. I'm really desperate.}TextColor44")
AddText(7,"I'm sorry to hear that, John. I wish I could be in two places at once, but I can't. It's a once-in-a-lifetime opportunity. Try calling the local authorities or find a ranger station nearby for help. I'll try to call or text you during breaks, but I can't leave right now.}TextColor7")
AddText(7,"I understand, Sam. I'll see what I can do to get through this. I hope you win that tournament.}TextColor44")
AddText(7,"Thanks, John. I appreciate your understanding. Stay safe out there, and we'll catch up after this tournament is over.}TextColor7")
AddText(7,"*beep*}TextColor0")
Task.Wait(0.1)
AddText(8,"*click*}TextColor0")
AddText(8,"Hey, is this Joseph McAllister, the cab driver?}TextColor44")
AddText(8,"Yeah, this is Joe. What's going on?}TextColor8")
AddText(8,"My name's John, and I'm in a terrible situation. I'm camping at Fort William Campsite, and my car just died. To make matters worse, they announced on the radio that there's a serial killer on the loose in this area.}TextColor44")
AddText(8,"That's rough, John. I'd like to help you right away, but I'm in the middle of planting some new strawberry seeds. I love my garden, and it's important to me. But I can head over in about 10 minutes. Can you wait that long?}TextColor8")
AddText(8,"I'm really scared, but I understand, Joe. I don't have much of a choice right now, so I'll wait for you. Just please hurry.}TextColor44")
AddText(8,"I'll do my best, John. Lock your car, find a safe spot, and keep your phone handy. If you see anything suspicious, call 911 immediately.}TextColor8")
AddText(8,"I'll follow your advice. Thanks for helping me out, Joe. I'll be waiting.}TextColor44")
AddText(8,"*beep*}TextColor0")
Task.Wait(0.1)
AddText(9,"*click*}TextColor0")
AddText(9,"*worried* Hey, is this Max Smith, the retired veteran and football coach?}TextColor44")
AddText(9,"Yes, this is Max. Who am I speaking with?}TextColor9")
AddText(9,"My name's John, and I'm in a real bind. I'm camping at Fort William Campsite, and my car just broke down. It's bad enough, but they announced on the radio that there's a serial killer on the loose in this area.}TextColor44")
AddText(9,"Oh my. I'd like to help you, John. I'm fishing at a nearby lake, and it's only about 15 minutes away from the campsite. I'll head over right away. Can you wait that long?}TextColor9")
AddText(9,"I'm really scared, Max, but I don't have many options right now. I'll be waiting for you, just please hurry.}TextColor44")
AddText(9,"I'm on my way, John. Lock your car, find a safe spot, and keep your phone handy. If you see or hear anything suspicious, call 911 immediately. We'll get through this together.}TextColor9")
AddText(9,"*beep*}TextColor0")
Task.Wait(0.1)
AddText(10,"*click*}TextColor0")
AddText(10,"*nervously* Aunt Phillis, it's John. I'm in real trouble here.}TextColor44")
AddText(10,"Hey John, what's going on?}TextColor10")
AddText(10,"I'm camping at Fort William Campsite, and my car just broke down. It's bad enough, but they announced on the radio that there's a serial killer on the loose in this area.}TextColor44")
AddText(10,"Oh my goodness, John. I want to help you right away, but I'm in the middle of a kickboxing class that won't end for another half hour. After that, it'll take me almost an hour to get to you by train since I don't drive.}TextColor10")
AddText(10,"I don't know what to do, Aunt Phillis. I'm really scared.}TextColor44")
AddText(10,"I understand, John, and I'm so sorry I can't be there immediately. But for now, lock your car, find a safe spot, and keep your phone close. If you see or hear anything suspicious, call 911 immediately.}TextColor10")
AddText(10,"I'll follow your advice. Thank you, Aunt Phillis. I appreciate you doing your best to help.}TextColor44")
AddText(10,"I love you, John. I'll rush over as soon as I can. Stay safe and keep your phone charged.}TextColor10")
AddText(10,"*beep*}TextColor0")
Task.Wait(0.1)
AddText(11,"*click*}TextColor0")
AddText(11,"*worried* Hey, is this Tiffany Pemberton, the comedienne?}TextColor44")
AddText(11,"Yeah, this is Tiffany. Who's calling?}TextColor11")
AddText(11,"My name's John, and I'm in a really tough spot. I'm camping at Fort William Campsite, and my car just broke down. On top of that, they announced on the radio that there's a serial killer in this area.}TextColor44")
AddText(11,"Oh, wow, what's next, a bear juggling chainsaws? *laughs* Sorry, that was a terrible joke. But seriously, that's a rough situation.}TextColor11")
AddText(11,"*nervous chuckle* Yeah, it's no joke. I'm really scared, Tiffany. I don't know what to do.}TextColor44")
AddText(11,"I get it, John. I'm a comedienne, and humor is my thing, but I also want to help. Stay put, lock your car, and keep your phone handy. If you see anything suspicious, call 911 immediately.}TextColor11")
AddText(11,"Thanks, Tiffany. I'll follow your advice. But, hey, please don’t use any of this as material for your next comedy act.}TextColor44")
AddText(11,"*laugh* Well, John, I cant make any promises about that, I mean who knows these jokes might really kill on my next tour. Haha! Sorry, I’m not trying to make light of your situation. Lock your car and try to stay safe. If you get out of this alive Ill get you some free tickets to my next show.}TextColor11")
AddText(11,"*beep*}TextColor0")
Task.Wait(0.1)
AddText(12,"*click*}TextColor0")
AddText(12,"Hello, 911? I need help. I'm camping at Fort William Campsite, my car just broke down, and they announced on the radio that there's a serial killer on the loose.}TextColor44")
AddText(12,"I'm here to help, John. First things first, let's make sure you have a way to contact us. Do you have spare batteries for your cell phone?}TextColor12")
AddText(12,"Yes, I do. Hold on a sec.}TextColor44")
AddText(12,"Great, that's an important step. Now, can you tell me your exact location, including any landmarks or signs?}TextColor12")
AddText(12,"I'm at Fort William Campsite, and my car is on the main road, near Thunder Lake on the main road. Im in a blue sedan.}TextColor44")
AddText(12,"Thank you, John. That helps. We have a cop car about an hour away, so in the meantime, let's see if there's anyone nearby who can assist you. Do you have a map of the area with you?}TextColor12")
AddText(12,"I should have one in the car. Hold on, I'll check.}TextColor44")
AddText(12,"Good. Now, let's take a look at the map and see if there are any other campsites, ranger stations, or homes nearby where you might find help.}TextColor12")
AddText(12,"Yes I see some location nearby and I have a phone book with contacts of some people I know in this area.}TextColor44")
AddText(12,"Ok great try reaching out to any of those other people in the area to see if they can help in the meantime while we send a car out to your location.}TextColor12")
AddText(12,"*beep*}TextColor0")