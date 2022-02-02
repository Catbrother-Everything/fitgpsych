function onCreate()
    if curStep == 0 then
        makeLuaSprite('black', 'black', -250, -200);
	    setScrollFactor('black', 0.0, 0.0);
	    scaleObject('black', 3.0, 3.0);
    end
end

function onUpdate(elapsed)
    if curStep == 336 then
        addLuaSprite('black',true)
    end
    if curStep == 416 then
        removeLuaSprite('black', true);
    end
end