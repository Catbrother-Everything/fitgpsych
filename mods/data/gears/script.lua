local Freddyg = true
local L = -1

function onCreate()
	setProperty('dad.x',120)
	setProperty('dad.y',5)
end

function onSongStart()
    if Freddyg then
        playSound('Gears_Voices',1,'cock')
        setSoundTime('cock', 221)
		playSound('Gears_Inst',1,'h')
        setSoundTime('h', 221)
        Freddyg = false
    end
end

function opponentNoteHit()
	triggerEvent('Screen Shake','0.080,0.0024','0.080,0.0009')
end

function onUpdate(elapsed)
	L = L - 1 * elapsed
    if curStep >= 0 then
        setProperty('vocals.volume', 0)
		setProperty('inst.volume', 0)
    end

	if L == 0 then
		setSoundVolume('cock', 1)
		setSoundVolume('h', 1)
	end
end

function onPause()
    pauseSound('cock')
	pauseSound('h')
end

function onResume()
    resumeSound('cock')
	resumeSound('h')
end

function noteMiss(id, noteData, noteType, isSustainNote)
	if not noteType == 'Gear Note' then
		setSoundVolume('cock', 0)
		setSoundVolume('h', 0)
		L = 1
	end
end