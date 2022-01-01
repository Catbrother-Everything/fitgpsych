function onCreate()
	setProperty('dad.x',200)
	setProperty('dad.y',150)

	setProperty('gf.x',350)
	setProperty('gf.y',80)
end

function onUpdate(elapsed)
	if curStep == 400 then
		setProperty('gf.x',350)
		setProperty('gf.y',80)
	end
end