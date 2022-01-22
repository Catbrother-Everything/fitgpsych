local confirmRise = false
local junk = math.random(1,2)
local lmao1 = math.random(20,40,60,80,100)
local lmao2 = math.random(20,40,60,80,100)
local lmao3 = math.random(20,40,60,80,100)
local lmao4 = math.random(20,40,60,80,100)
local lmao5 = math.random(20,40,60,80,100)
local lmao6 = math.random(20,40,60,80,100)
local lmao7 = math.random(20,40,60,80,100)
local lmao8 = math.random(20,40,60,80,100)

function onUpdate(elapsed)
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