function onCreate()
	-- background shit
	makeLuaSprite('galaxiibgbackblocks', 'studio/galaxiibgbackblocks', -600, -550);
	setScrollFactor('galaxiibgbackblocks', 1.0, 1.0);
	scaleObject('galaxiibgbackblocks', 1.1, 1.1);
	
	makeLuaSprite('galaxiibgfrontblocks', 'studio/galaxiibgfrontblocks', -600, -550);
	setScrollFactor('galaxiibgfrontblocks', 1.0, 1.0);
	scaleObject('galaxiibgfrontblocks', 1.1, 1.1);

	addLuaSprite('galaxiibgbackblocks', false);
	addLuaSprite('galaxiibgfrontblocks', false);
end