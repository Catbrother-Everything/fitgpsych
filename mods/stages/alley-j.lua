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
		makeLuaSprite('Skyr', 'alley/Sky_reaching_galaxy', -600, -2670);
		setScrollFactor('Skyr', 1.0, 1.0);
		scaleObject('Skyr', 1.0, 1.0);
	end

	makeLuaSprite('Skym', 'alley/Sky_middle', -520, -205);
	setScrollFactor('Skym', 0, 0);
	scaleObject('Skym', 1.0, 1.0);

	makeLuaSprite('Sky', 'alley/Sky', -520, -700);
	setScrollFactor('Sky', 0.9, 0.96);
	scaleObject('Sky', 1.0, 1.0);

	if not lowQuality then
		makeAnimatedLuaSprite('clouds', 'alley/clouds', -2050, -550);
		setScrollFactor('clouds', 1.0, 1.0);
		addAnimationByPrefix('clouds','bop','CloudsIdle',24,false)
		scaleObject('clouds', 1.0, 1.0);
	end

	makeLuaSprite('Walls', 'alley/Walls', -505, -740);
	setScrollFactor('Walls', 0.92, 1.0);
	scaleObject('Walls', 1.0, 1.0);

	makeLuaSprite('Ground', 'alley/Ground', -350, -470);
	setScrollFactor('Ground', 1.0, 1.0);
	scaleObject('Ground', 0.98, 0.98);
	
	addLuaSprite('Skym', false);
	addLuaSprite('Sky', false);
	addLuaSprite('clouds', false);
	addLuaSprite('BGBuildings', false);
	addLuaSprite('Road', false);
	addLuaSprite('Fence', false);
	addLuaSprite('Walls', false);
	addLuaSprite('Ground', false);
	addLuaSprite('Dumpsters', false);
	addLuaSprite('Trash', false);
end

function onUpdate(elapsed)
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