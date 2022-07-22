-- Event by JoltGanda, it broke though god fucking damn it
function onEvent(name, value1, value2)
	if name == 'Zoom Camera' then
		if value2 == not '0' or '' then
			doTweenZoom('camTween', 'camGame', value1, value2, 'circOut')
		else
			setProperty('defaultCamZoom', value1);
		end
	end
end