function onCreate()
	-- background shit
	
	makeLuaSprite('bg', 'pizza/bg', 0, 0);
	
	makeAnimatedLuaSprite('bop1', 'pizza/boppers', 400, 667);
	
	makeAnimatedLuaSprite('bop2', 'pizza/boppers2', 64, 937);
	setLuaSpriteScrollFactor('bop2', 1.2, 1.0);
	scaleObject('bop2', 1.5, 1.5);
	
	addAnimationByPrefix('bop1', 'cheer', 'PL workers celebrating instancia 1', 24, false);
	addAnimationByPrefix('bop1', 'bop', 'PL workers  instancia 1', 24, false);
	addAnimationByPrefix('bop2', 'bop', 'PL characters looking', 24, false);

	addLuaSprite('bg', false);
	addLuaSprite('bop1', false);
	addLuaSprite('bop2', true);
	
end

-- Gameplay interactions
function onBeatHit()
	-- triggered 4 times per section
	if curBeat % 2 == 0 then
		objectPlayAnimation('bop1', 'bop');
		objectPlayAnimation('bop2', 'bop');
	end
end

function onStepHit()
	-- triggered 16 times per section
	
end

function onCountdownTick(counter)
	-- counter = 0 -> "Three"
	-- counter = 1 -> "Two"
	-- counter = 2 -> "One"
	-- counter = 3 -> "Go!"
	-- counter = 4 -> Nothing happens lol, tho it is triggered at the same time as onSongStart i think
	if counter % 2 == 0 then
		objectPlayAnimation('bop1', 'bop');
		objectPlayAnimation('bop2', 'bop');
	end
end