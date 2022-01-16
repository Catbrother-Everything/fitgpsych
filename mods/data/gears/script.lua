function onCreate()
	setProperty('dad.x',120)
	setProperty('dad.y',5)
end

function onUpdate(elapsed)
	if curStep == 352 then
		setProperty('songSpeed',getProperty('songSpeed') + 0.1)
	end

	if curStep == 640 then
		setProperty('songSpeed',getProperty('songSpeed') - 0.2)
	end

	if curStep == 816 then
		setProperty('songSpeed',getProperty('songSpeed') + 0.1)
	end

	if curStep == 843 then
		setProperty('songSpeed',getProperty('songSpeed') + 0.1)
	end

	if curStep == 976 then
		setProperty('songSpeed',getProperty('songSpeed') + 0.1)
	end

	if curStep == 1040 then
		setProperty('songSpeed',getProperty('songSpeed') + 0.1)
	end

	if curStep == 1104 then
		setProperty('songSpeed',getProperty('songSpeed') + 0.1)
	end

	if curStep == 1106 then
		setProperty('songSpeed',getProperty('songSpeed') + 0.1)
	end

	if curStep == 1109 then
		setProperty('songSpeed',getProperty('songSpeed') + 0.1)
	end

	if curStep == 1113 then
		setProperty('songSpeed',getProperty('songSpeed') + 0.1)
	end

	if curStep == 1117 then
		setProperty('songSpeed',getProperty('songSpeed') + 0.1)
	end
end