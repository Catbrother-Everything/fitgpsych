function onCreate()
	-- background shit
	makeAnimatedLuaSprite('static', 'static', -200, -350);
	setScrollFactor('static', 1.0, 1.0);
	addAnimationByPrefix('static','bop','static',24,loop)
	scaleObject('static', 1.9, 1.9);

	addLuaSprite('static', false);
end

function onBeatHit()
	objectPlayAnimation('static','bop',false)
end