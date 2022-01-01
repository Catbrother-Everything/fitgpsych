local junk = math.random(0,1)
local horizontalMoment = math.random(0,1)
local verticalMoment = math.random(0,1)
local randomHeight = math.random(-150,-130,-140,-160,-170,-180,-190,-200,-210,-220,-230,-240,-250,-260,-270,-280,-290,-300,-310,-320,-330,-340,-350,-360,-370,-380,-390,-400,-410,-420)

function onCreate()
	setProperty('dad.y',randomHeight)
	makeLuaSprite('Woah', 'Woah', -30, -100);
	setScrollFactor('Woah', 1.0, 1.0);
	scaleObject('Woah', 1.0, 1.0);

	addLuaSprite('Woah', false);
end

function onUpdate(elapsed)
	fuck = getProperty('dad.x')
	frick = getProperty('dad.y')
	freak = getProperty('boyfriend.y')

	if horizontalMoment == 0 then
		setProperty('dad.x', fuck - 70 * elapsed)
		if fuck <= -5 then
			horizontalMoment = 1
		end
	end

	if horizontalMoment == 1 then
		setProperty('dad.x', fuck + 70 * elapsed)
		if fuck >= 85 then
			horizontalMoment = 0
		end
	end

	if verticalMoment == 0 then
		setProperty('dad.y', frick - 95 * elapsed)
		if frick <= -420 then
			verticalMoment = 1
		end
	end

	if verticalMoment == 1 then
		setProperty('dad.y', frick + 95 * elapsed)
		if frick >= -120 then
			verticalMoment = 0
		end
	end

	if curStep > 1103 then
		setProperty('boyfriend.y', freak - 95 * elapsed)
	end
end

function noteMiss(id, noteData, noteType, isSustainNote)
	if curStep > 1103 and freak <= -80 then
		setProperty('boyfriend.y', freak + 95)
	end
end