function onCreate()
	setProperty('dad.x',200)
	setProperty('dad.y',150)

	setProperty('gf.x',350)
	setProperty('gf.y',80)
end

function onUpdate(elapsed)
	if curStep == 368 then
		doTweenAlpha('1','camHUD',0,0.5,'linear')
	end

	if curStep == 384 then
		doTweenZoom('2','camGame',1.3,1.7,'linear')
	end

	if curStep == 400 then
		setProperty('gf.x',350);
		setProperty('gf.y',80);
		doTweenAlpha('1','camHUD',1,0.5,'linear')
	end
end