function onCreate()
	-- background shit
	makeLuaSprite('galaxiibgbackblocks', 'galaxiibgbackblocks', -600, -550);
	setScrollFactor('galaxiibgbackblocks', 1.0, 1.0);
	scaleObject('galaxiibgbackblocks', 1.1, 1.1);
	
	makeLuaSprite('galaxiibgfrontblocks', 'galaxiibgfrontblocks', -600, -550);
	setScrollFactor('galaxiibgfrontblocks', 1.0, 1.0);
	scaleObject('galaxiibgfrontblocks', 1.1, 1.1);
		
	addLuaSprite('galaxiibgbackblocks', false);
	addLuaSprite('galaxiibgfrontblocks', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end