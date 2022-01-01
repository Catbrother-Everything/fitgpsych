local hitten = 0

function onCreate()
	makeAnimatedLuaSprite('virgin', 'virginity_assets', -113, -70);
	setScrollFactor('virgin', 0.0, 0.0);
	addAnimationByPrefix('virgin','bop','fnafstatic',24,true)
	scaleObject('virgin', 1.2, 1.2);

	makeAnimatedLuaSprite('virgin2', 'virginity_assets', -113, -70);
	setScrollFactor('virgin2', 0.0, 0.0);
	addAnimationByPrefix('virgin2','bop','fnafstatic',24,true)
	scaleObject('virgin2', 1.2, 1.2);

	makeAnimatedLuaSprite('virgin3', 'virginity_assets', -113, -70);
	setScrollFactor('virgin3', 0.0, 0.0);
	addAnimationByPrefix('virgin3','bop','fnafstatic',24,true)
	scaleObject('virgin3', 1.2, 1.2);

	makeAnimatedLuaSprite('virgin4', 'virginity_assets', -113, -70);
	setScrollFactor('virgin4', 0.0, 0.0);
	addAnimationByPrefix('virgin4','bop','fnafstatic',24,true)
	scaleObject('virgin4', 1.2, 1.2);

	makeAnimatedLuaSprite('virgin5', 'virginity_assets', -113, -70);
	setScrollFactor('virgin5', 0.0, 0.0);
	addAnimationByPrefix('virgin5','bop','fnafstatic',24,true)
	scaleObject('virgin5', 1.2, 1.2);

	makeAnimatedLuaSprite('virgin6', 'virginity_assets', -113, -70);
	setScrollFactor('virgin6', 0.0, 0.0);
	addAnimationByPrefix('virgin6','bop','fnafstatic',24,true)
	scaleObject('virgin6', 1.2, 1.2);

	makeAnimatedLuaSprite('virgin7', 'virginity_assets', -113, -70);
	setScrollFactor('virgin7', 0.0, 0.0);
	addAnimationByPrefix('virgin7','bop','fnafstatic',24,true)
	scaleObject('virgin7', 1.2, 1.2);

	makeAnimatedLuaSprite('virgin8', 'virginity_assets', -113, -70);
	setScrollFactor('virgin8', 0.0, 0.0);
	addAnimationByPrefix('virgin8','bop','fnafstatic',24,true)
	scaleObject('virgin8', 1.2, 1.2);

	makeAnimatedLuaSprite('virgin9', 'virginity_assets', -113, -70);
	setScrollFactor('virgin9', 0.0, 0.0);
	addAnimationByPrefix('virgin9','bop','fnafstatic',24,true)
	scaleObject('virgin9', 1.2, 1.2);

	makeAnimatedLuaSprite('virgin10', 'virginity_assets', -113, -70);
	setScrollFactor('virgin10', 0.0, 0.0);
	addAnimationByPrefix('virgin10','bop','fnafstatic',24,true)
	scaleObject('virgin10', 1.2, 1.2);
end

function noteMiss(id, noteData, noteType, isSustainNote)
	if noteType == 'Static Note' then
		hitten = hitten + 1;
		
	end
end

function onUpdate(elapsed)
	if hitten == 1 then
		addLuaSprite('virgin', true);
	end

	if hitten == 2 then
		addLuaSprite('virgin2', true);
	end

	if hitten == 3 then
		addLuaSprite('virgin3', true);
	end

	if hitten == 4 then
		addLuaSprite('virgin4', true);
	end

	if hitten == 5 then
		addLuaSprite('virgin5', true);
	end

	if hitten == 6 then
		addLuaSprite('virgin6', true);
	end

	if hitten == 7 then
		addLuaSprite('virgin7', true);
	end

	if hitten == 8 then
		addLuaSprite('virgin8', true);
	end

	if hitten == 9 then
		addLuaSprite('virgin9', true);
	end

	if hitten == 10 then
		addLuaSprite('virgin10', true);
	end

end