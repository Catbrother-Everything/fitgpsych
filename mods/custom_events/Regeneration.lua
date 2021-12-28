-- Event notes hooks
function onEvent(name, value1, value2)
	if name == 'Regeneration' then
		heal = tonumber(value1);
			setProperty('health', getProperty('health') + heal);
	end

		targetAlpha = tonumber(value2);
		if duration > 0 then
			duration = duration - 1 * elapsed;
				setProperty('health', getProperty('health') + value2 * elapsed);
		end
end