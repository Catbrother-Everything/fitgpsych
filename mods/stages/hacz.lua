function onCreate()
	-- background shit
	makeAnimatedLuaSprite('static', 'static', -200, -350);
	setScrollFactor('static', 1.0, 1.0);
	addAnimationByPrefix('static','bop','static',24,true)
	scaleObject('static', 1.9, 1.9);

	makeLuaSprite('Vignette', 'Vignette', -34, -65);
	setScrollFactor('Vignette', 0.0, 0.0);
	scaleObject('Vignette', 1.41, 1.5);

	addLuaSprite('static', false);
	addLuaSprite('Vignette', true);
end

function onBeatHit()
	objectPlayAnimation('static','bop',false)
end