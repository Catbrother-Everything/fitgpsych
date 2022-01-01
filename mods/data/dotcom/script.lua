function onUpdate(elapsed)
	if curStep == 308 then
		makeLuaSprite('goop', 'goop', -63, -50);
		setScrollFactor('goop', 0.0, 0.0);
		scaleObject('goop', 1.1, 1.1);
		addLuaSprite('goop', true);
	end
end