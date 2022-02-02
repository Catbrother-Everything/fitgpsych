function onCreate()
    makeLuaSprite('black', 'black', -250, -200);
    setScrollFactor('black', 0.0, 0.0);
    scaleObject('black', 3.0, 3.0);
    addCharacterToList('mouse', 'dad')
end

function onUpdate(elapsed)
    if curStep == 336 then
        addLuaSprite('black',true)
        doTweenAlpha('iconoftheday','iconP2',0,1,'linear')
    end
    if curStep == 416 then
        removeLuaSprite('black', true);
        triggerEvent('Change Character', 1, 'mouse');
        doTweenAlpha('iconoftheday','iconP2',1,1,'linear')
    end

    if curStep >= 338 and curStep <= 414 and getProperty('health') > 1 then
        setProperty('health',getProperty('health') - 0.01)
    end
end