function onCreate()
	setProperty('dad.x',0)
	setProperty('dad.y',-350)

	makeAnimatedLuaSprite('Fuck', 'characters/Nathan_Be_Shootin_Assets', 1500, -130);
	setScrollFactor('Fuck', 1.0, 1.0);
	addAnimationByPrefix('Fuck','bop','Nathan Idle',24,false)
	addAnimationByPrefix('Fuck','gun','Nathan Shoot',24,false)
	scaleObject('Fuck', 1.0, 1.0);

	addLuaSprite('Fuck', false);
end

function onBeatHit()
	objectPlayAnimation('Fuck','bop',false)
end

function goodNoteHit(d, noteData, noteType, isSustainNote)
	if noteType == 'Warning Note' then
		objectPlayAnimation('Fuck','gun',true)
	end
end

function opponentNoteHit()
	setProperty('health',getProperty('health') - 0.01)
end

function onUpdate(elapsed)
	if curStep == 255 or curStep == 320 or curStep == 543 or curStep == 1055 or curStep == 1144 then
		setProperty('songSpeed',getProperty('songSpeed') + 0.1)
	end

	if curStep == 287 or curStep == 351 then
		setProperty('songSpeed',getProperty('songSpeed') - 0.1)
	end

	if curStep == 447 then
		setProperty('songSpeed',getProperty('songSpeed') + 0.2)
	end

	if curStep == 788 then
		setProperty('songSpeed',getProperty('songSpeed') - 0.6)
	end

	if curStep == 927 then
		setProperty('songSpeed',getProperty('songSpeed') + 0.3)
	end


end