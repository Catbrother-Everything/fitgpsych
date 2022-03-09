local confirmRise = false
local junk = math.random(1,2)
local junk2 = math.random(20,40,60,80,100)
local junk3 = math.random(20,40,60,80,100)
local junk4 = math.random(20,40,60,80,100)
local junk5 = math.random(20,40,60,80,100)
local lmao1 = 0
local lmao2 = 0
local lmao3 = 0
local lmao4 = 0
local lmao5 = 0
local lmao6 = 0
local lmao7 = 0
local lmao8 = 0
local wasDownScroll = false

function onCreate()
	if downscroll then
		wasDownScroll = true
		setPropertyFromClass('ClientPrefs','downScroll',false)
	end
end

function onUpdate(elapsed)
	if curStep == 0 and wasDownScroll then
		noteTweenY('54',2,20,0.7,'circInOut')
	end

	if curStep == 32 and wasDownScroll then
		noteTweenY('55',0,20,0.7,'circInOut')
	end

	if curStep == 64 and wasDownScroll then
		noteTweenY('56',3,20,0.7,'circInOut')
	end

	if curStep == 96 and wasDownScroll then
		noteTweenY('57',1,20,0.7,'circInOut')
	end

	if curStep == 161 and wasDownScroll then
		noteTweenY('57',4,20,0.7,'circInOut')
		noteTweenY('58',5,20,0.7,'circInOut')
		noteTweenY('59',6,20,0.7,'circInOut')
		noteTweenY('60',7,20,0.7,'circInOut')
		doTweenY('health', 'camOther', 20, 0.7, 'circInOut')
	end

	if curStep == 40 then
		lmao1 = math.random(20,100)
		lmao2 = math.random(20,100)
		lmao3 = math.random(20,100)
		lmao4 = math.random(20,100)
		lmao5 = math.random(20,100)
		lmao6 = math.random(20,100)
		lmao7 = math.random(20,100)
		lmao8 = math.random(20,100)
	end

	if confirmRise == false and curStep >= 480 and curStep < 1014 then
		noteTweenY('4',4,0,0.033,'circInOut')
		noteTweenY('5',5,0,0.033,'circInOut')
		noteTweenY('6',6,0,0.033,'circInOut')
		noteTweenY('7',7,0,0.033,'circInOut')
		noteTweenY('0',0,0,0.033,'circInOut')
		noteTweenY('1',1,0,0.033,'circInOut')
		noteTweenY('2',2,0,0.033,'circInOut')
		noteTweenY('3',3,0,0.033,'circInOut')
		confirmRise = true
	end

	if confirmRise == true and curStep >= 480 and curStep < 1014 then
		noteTweenY('12',4,lmao1,0.033,'circInOut')
		noteTweenY('13',5,lmao2,0.033,'circInOut')
		noteTweenY('14',6,lmao3,0.033,'circInOut')
		noteTweenY('15',7,lmao4,0.033,'circInOut')
		noteTweenY('8',0,lmao5,0.033,'circInOut')
		noteTweenY('9',1,lmao6,0.033,'circInOut')
		noteTweenY('10',2,lmao7,0.033,'circInOut')
		noteTweenY('11',3,lmao8,0.033,'circInOut')
		confirmRise = false
	end
end