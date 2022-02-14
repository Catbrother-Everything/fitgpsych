local allowCountdown = false
local lineCount = 0
function onStartCountdown()
	-- Block the first countdown and start a timer of 0.8 seconds to play the dialogue
	if not allowCountdown and isStoryMode and not seenCutscene then
		makeAnimatedLuaSprite('bg', 'dialogue/dialogueBG_Assets', -75, -50);
		addAnimationByPrefix('bg','studio','week1',24,false)
		addAnimationByPrefix('bg','alley','week2',24,false)
		addAnimationByPrefix('bg','jail','week3',24,false)
		addAnimationByPrefix('bg','halloween','week4',24,false)
		addAnimationByPrefix('bg','freggy','week5',24,false)
		setScrollFactor('bg', 0, 0);
		scaleObject('bg', 1.0, 1.0);
		addLuaSprite('bg',true)
		objectPlayAnimation('bg','halloween',false)
		setProperty('inCutscene', true);
		runTimer('startDialogue', 0.8);
		allowCountdown = true;
		return Function_Stop;
	end

	if not acceptedStuff then
		makeLuaSprite('hell_nah', 'id/MechanicCard_Dave', 300, 44);
		setScrollFactor('hell_nah', 0, 0);
		scaleObject('hell_nah', 0.8, 0.8);
		addLuaSprite('hell_nah', true);
		allowPress = true
		return Function_Stop;
	end
	return Function_Continue;
end

function onUpdate(elapsed)
	if not acceptedStuff and allowPress then
		if keyJustPressed('accept') then
			acceptedStuff = true;
			removeLuaSprite('hell_nah', false);
		end
	end
	if acceptedStuff then
		startCountdown()
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'startDialogue' then -- Timer completed, play dialogue
		startDialogue('dialogue', 'breakfast');
	end
end

-- Dialogue (When a dialogue is finished, it calls startCountdown again)
function onNextDialogue(count)
	lineCount = lineCount + 1
	if lineCount == 10 then
		doTweenAlpha('1', 'bg', 0, 0.8, 'linear')
	end
end

function onSkipDialogue(count)
	-- triggered when you press Enter and skip a dialogue line that was still being typed, dialogue line starts with 1
end