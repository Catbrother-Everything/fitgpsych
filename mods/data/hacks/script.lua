local whichText = 7

function onCreate()
	if isStoryMode then
		makeAnimatedLuaSprite('cutscene', 'virginity_assets', -113, -70);
		setScrollFactor('cutscene', 0.0, 0.0);
		addAnimationByPrefix('cutscene','bop','fnafstatic',24,true)
		scaleObject('cutscene', 1.2, 1.2);

		addLuaSprite('cutscene',true)
		setObjectCamera('cutscene','camOther')
	end
end

function onUpdate()
	if curStep == 1 then
		doTweenAlpha('1','cutscene',0,5,'circInOut')
	end
	setTextFont('HELP', 'HelpMe.tff')

	if curStep == 33 then
		removeLuaObject('cutscene',true)
	end
	if whichText == 0 then
		setTextString('HELP', 'THE VOICES CLIP')
	end
	if whichText == 1 then
		setTextString('HELP', 'ITS SO COLD')
	end
	if whichText == 2 then
		setTextString('HELP', 'HES NEAR')
	end
	if whichText == 3 then
		setTextString('HELP', 'GET OUT')
	end
	if whichText == 4 then
		setTextString('HELP', 'MOVE')
	end
	if whichText == 5 then
		setTextString('HELP', 'OUT OF THE WAY')
	end
	if whichText == 6 then
		setTextString('HELP', 'https://cdn.discordapp.com/attachments/864663683686727683/942910573245526046/FLiiDtNXsAEPg6i.png')
	end
end

function onBeatHit()
	if curBeat == 72 then
		makeLuaText('HELP', 'I CANT LOSE', 350, 0, 450)
		setTextFont('HELP', 'HelpMe.tff')
		setTextAlignment('HELP', 'center')
		setTextSize('HELP', 100)
		addLuaText('HELP')
	end
	if curBeat > 72 then
		whichText = math.random(0, 6)
	end
end