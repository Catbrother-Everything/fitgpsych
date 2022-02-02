function onStepHit()
    if Curstep == 336 then
        makeLuaSprite('black', 'black', -600, -550);
        setScrollFactor('black', 1.0, 1.0);
        scaleObject('black', 10, 10);
        addLuaSprite('black', true);
    end
    if Curstep == 416 then
        removeLuaSprite('black', true);
    end
end