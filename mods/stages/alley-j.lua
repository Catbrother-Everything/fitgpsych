local birdX = math.random(600, 950);
local birdY = math.random(-100, -250);

function onCreate()
	-- background shit
	if not lowQuality or songName == 'J' then
		makeLuaSprite('Skyg', 'alley/Sky_galaxy', -600, -3750);
		setScrollFactor('Skyg', 1.0, 1.0);
		scaleObject('Skyg', 1.0, 1.0);
	end

	if not lowQuality or songName == 'J' then
		makeLuaSprite('Skyr', 'alley/Sky_reaching_galaxy', -600, -2730);
		setScrollFactor('Skyr', 1.0, 1.0);
		scaleObject('Skyr', 1.0, 1.0);
	end

	if not lowQuality or songName == 'J' then
		makeLuaSprite('Skym3', 'alley/Sky_middle', -600, -2400);
		setScrollFactor('Skym3', 1.0, 1.0);
		scaleObject('Skym3', 1.0, 1.0);
	end

	if not lowQuality or songName == 'J' then
		makeLuaSprite('Skym2', 'alley/Sky_middle', -600, -1900);
		setScrollFactor('Skym2', 1.0, 1.0);
		scaleObject('Skym2', 1.0, 1.0);
	end

	makeLuaSprite('Skym', 'alley/Sky_middle', -600, -1350);
	setScrollFactor('Skym', 1.0, 1.0);
	scaleObject('Skym', 1.0, 1.0);

	makeLuaSprite('Sky', 'alley/Sky', -600, -550);
	setScrollFactor('Sky', 1.0, 1.0);
	scaleObject('Sky', 1.0, 1.0);

	if not lowQuality then
		makeAnimatedLuaSprite('clouds', 'alley/clouds', -2050, -550);
		setScrollFactor('clouds', 1.0, 1.0);
		addAnimationByPrefix('clouds','bop','CloudsIdle',24,false)
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
	
	addLuaSprite('Skym', false);
	addLuaSprite('Sky', false);
	addLuaSprite('clouds', false);
	addLuaSprite('Birds', false);
	addLuaSprite('BGBuildings', false);
	addLuaSprite('Road', false);
	addLuaSprite('Fence', false);
	addLuaSprite('Walls', false);
	addLuaSprite('Ground', false);
	addLuaSprite('Dumpsters', false);
	addLuaSprite('Trash', false);
end

function onUpdate(elapsed)
	if curStep == 1104 then
		addLuaSprite('Skym2', false);
	end

	if curStep == 1134 then
		addLuaSprite('Skym3', false);
	end

	if curStep == 1168 then
		addLuaSprite('Skyr', false);
	end

	if curStep == 1200 then
		addLuaSprite('Skyg', false);
	end
end

function onBeatHit()
	objectPlayAnimation('clouds','bop',false)
end