function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Notecore' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'NOTE_assets_notecore'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', true);

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has no penalties
			end
		end
	end
	--debugPrint('Script started!')
end
-- Called after the note miss calculations
-- Player missed a note by letting it go offscreen

function noteMiss(id, noteData, noteType, isSustainNote)
	if noteType == 'Notecore' then
		setProperty('health', getProperty('health') - 0.9)
	end
end