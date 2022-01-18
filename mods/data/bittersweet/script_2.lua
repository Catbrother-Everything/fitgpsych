function onStartCountdown()
	if not allowEnd then
		makeLuaSprite('Sky', 'alley/Sky', -600, -550);
		addLuaSprite('Sky', false);
		return Function_Stop;
	end
	return Function_Continue;
end

function onUpdate(elapsed)
	if keyJustPressed('accept') and not allowEnd then
		allowEnd = true;
		removeLuaSprite('Sky', false);
	end
	if allowEnd then
		startCountdown()
	end
end