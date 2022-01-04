local canMove = 0
local goopY = -470

function onCreate()
	makeLuaSprite('goop', 'goop', 125, goopY);
	setScrollFactor('goop', 0.0, 0.0);
	scaleObject('goop', 0.8, 0.8);
	addLuaSprite('goop', true);
end

function onUpdate(elapsed)
	if curStep == 160 then
		canMove = 1;
	end

	if curStep == 240 then
		canMove = 0;
	end

	if curStep == 301 then
		canMove = 1;
	end

	if curStep == 320 then
		canMove = 2;
	end
		
	if canMove == 1 and goopY < -50 then
		goopY = goopY + 25 * elapsed;
		removeLuaSprite('goop',true)
		makeLuaSprite('goop', 'goop', 125, goopY);
		setScrollFactor('goop', 0.0, 0.0);
		scaleObject('goop', 0.8, 0.8);
		addLuaSprite('goop', true);
	end

	if canMove == 2 and goopY < -50 then
		goopY = goopY + 5 * elapsed;
		removeLuaSprite('goop',true)
		makeLuaSprite('goop', 'goop', 125, goopY);
		setScrollFactor('goop', 0.0, 0.0);
		scaleObject('goop', 0.8, 0.8);
		addLuaSprite('goop', true);
	end
end

-- -50