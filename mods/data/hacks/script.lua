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

	if curStep == 33 then
		removeLuaObject('cutscene',true)
	end
end