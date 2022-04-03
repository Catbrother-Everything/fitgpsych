local birdX = math.random(600, 950);
local birdY = math.random(-100, -250);

function onCreate()
	-- background shit
	makeLuaSprite('Sky', 'alley/Sky', -600, -550);
	setScrollFactor('Sky', 1.0, 1.0);
	scaleObject('Sky', 1.0, 1.0);

	if not lowQuality then
		makeAnimatedLuaSprite('clouds', 'alley/clouds', -2050, -550);
		setScrollFactor('clouds', 1.0, 1.0);
		addAnimationByPrefix('clouds','bop','CloudsIdle',24,false)
		scaleObject('clouds', 1.1, 1.1);
	else
		makeLuaSprite('clouds', 'alley/clouds', -2050, -550);
		setScrollFactor('clouds', 1.0, 1.0);
		scaleObject('clouds', 1.1, 1.1);
	end

	if not lowQuality then
		makeAnimatedLuaSprite('Birds', 'alley/Birds', birdX, birdY);
		setScrollFactor('Birds', 0.02, 0.02);
		addAnimationByPrefix('Birds','bop','birdie',24,true)
		scaleObject('Birds', 0.4, 0.4);
	end

	makeLuaSprite('Walls', 'alley/Walls', -725, -860);
	setScrollFactor('Walls', 1.0, 1.0);
	scaleObject('Walls', 1.08, 1.08);

	makeLuaSprite('Ground', 'alley/Ground', -470, -520);
	setScrollFactor('Ground', 1.0, 1.0);
	scaleObject('Ground', 1.0, 1.0);

	addLuaSprite('Sky', false);
	addLuaSprite('clouds', false);
	addLuaSprite('Birds', false);
	addLuaSprite('Walls', false);
	addLuaSprite('Ground', false);
end

function onBeatHit()
	objectPlayAnimation('clouds','bop',false)
end