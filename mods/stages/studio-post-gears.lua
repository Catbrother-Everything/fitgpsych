function onCreate()
	-- background shit
	makeLuaSprite('galaxiibgbackblocks', 'studio/galaxiibgbackblocks', -600, -550);
	setScrollFactor('galaxiibgbackblocks', 1.0, 1.0);
	scaleObject('galaxiibgbackblocks', 1.1, 1.1);
	
	makeLuaSprite('galaxiibgfrontblocks', 'studio/galaxiibgfrontblocks', -600, -550);
	setScrollFactor('galaxiibgfrontblocks', 1.0, 1.0);
	scaleObject('galaxiibgfrontblocks', 1.1, 1.1);

	makeAnimatedLuaSprite('AaronDead', 'studio/AaronDead', -175, 610);
	addAnimationByPrefix('AaronDead','bop','AaronBop',24,false)
	setScrollFactor('AaronDead', 1.0, 1.0);
	scaleObject('AaronDead', 1.1, 1.1);
		
	addLuaSprite('galaxiibgbackblocks', false);
	addLuaSprite('galaxiibgfrontblocks', false);
	addLuaSprite('AaronDead', true);
end
	
function onBeatHit()
	objectPlayAnimation('AaronDead','bop',false)
end