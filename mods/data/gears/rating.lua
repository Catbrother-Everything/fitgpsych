function onCreate()
    makeLuaText('ratings', 'RATINGS DONT WORK IN THIS SONG!', 500, 880, 690)
    setTextSize('ratings', 16)
    addLuaText('ratings')
    setObjectCamera('ratings', 'hud')
    debugPrint('working!!')
end

function onUpdate()
    setProperty('ratingPercent', 1)
    setProperty('ratingString', 'Not available for this song')
end