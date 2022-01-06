function onCreate()
	-- background shit
	makeLuaSprite('Fjc_you', 'studio/Fjc_you', -600, -530);
	setScrollFactor('Fjc_you', 1.0, 1.0);
	scaleObject('Fjc_you', 1.1, 1.1);

	makeLuaSprite('galaxiibgbackblocks', 'studio/galaxiibgbackblocks', -600, -550);
	setScrollFactor('galaxiibgbackblocks', 1.0, 1.0);
	scaleObject('galaxiibgbackblocks', 1.1, 1.1);

	makeAnimatedLuaSprite('BGBoppers', 'studio/BGBoppers', 400, 105);
	addAnimationByPrefix('BGBoppers','bop','bganim',24,false)
	setScrollFactor('BGBoppers', 1.0, 1.0);
	scaleObject('BGBoppers', 1.1, 1.1);
	
	makeLuaSprite('galaxiibgfrontblocks', 'studio/galaxiibgfrontblocks', -600, -550);
	setScrollFactor('galaxiibgfrontblocks', 1.0, 1.0);
	scaleObject('galaxiibgfrontblocks', 1.1, 1.1);

	makeAnimatedLuaSprite('MGBoppers', 'studio/MGBoppers', 20, 150);
	addAnimationByPrefix('MGBoppers','bop','mganim',24,false)
	setScrollFactor('MGBoppers', 1.0, 1.0);
	scaleObject('MGBoppers', 1.3, 1.3);
	
	makeAnimatedLuaSprite('AaronDead', 'studio/AaronDead', -175, 610);
	addAnimationByPrefix('AaronDead','bop','AaronBop',24,false)
	setScrollFactor('AaronDead', 1.0, 1.0);
	scaleObject('AaronDead', 1.1, 1.1);

	makeAnimatedLuaSprite('FGBoppers', 'studio/FGBoppers', -500, 550);
	addAnimationByPrefix('FGBoppers','bop','fganim',24,false)
	setScrollFactor('FGBoppers', 1.0, 1.0);
	scaleObject('FGBoppers', 1.3, 1.3);
	
	addLuaSprite('Fjc_you', true);
	addLuaSprite('galaxiibgbackblocks', false);
	addLuaSprite('BGBoppers', false);
	addLuaSprite('galaxiibgfrontblocks', false);
	addLuaSprite('MGBoppers', false);
	addLuaSprite('AaronDead', true);
	addLuaSprite('FGBoppers', true);
end

function onBeatHit()
	objectPlayAnimation('BGBoppers','bop',false)
	objectPlayAnimation('MGBoppers','bop',false)
	objectPlayAnimation('FGBoppers','bop',false)
	objectPlayAnimation('AaronDead','bop',false)
end