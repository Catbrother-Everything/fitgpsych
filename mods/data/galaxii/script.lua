function onCreate()
	setProperty('dad.x',200)
	setProperty('dad.y',150)

	setProperty('gf.x',350)
	setProperty('gf.y',80)
end

function onStartCountdown()
	-- Block the first countdown and start a timer of 0.8 seconds to play the dialogue
	if not acceptedStuff then
		makeLuaSprite('hell_nah', 'id/MechanicCard_Nova', 75, 0);
		setScrollFactor('hell_nah', 0, 0);
		addLuaSprite('hell_nah', true);
		allowPress = true
		return Function_Stop;
	end
	return Function_Continue;
end

function onUpdate(elapsed)
	if keyJustPressed('accept') and not acceptedStuff and allowPress then
		acceptedStuff = true;
		removeLuaSprite('hell_nah', false);
	end
	if acceptedStuff then
		startCountdown()
	end
end