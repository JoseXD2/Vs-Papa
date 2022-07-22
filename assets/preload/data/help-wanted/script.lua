function onCreate()
	setPropertyFromClass('GameOverSubstate', 'characterName', 'bf-death-papas'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx'); --put in mods/sounds/
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOve'); --put in mods/music/
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEnd'); --put in mods/music
end

--I ALSO had to recreate this one from scratch because ALL the links expired.
--Thanks, ShadowMario, very cool. -Jolt



local allowCountdown = false 
function onStartCountdown()
	if not allowCountdown and isStoryMode and not seenCutscene then --Block the first countdown
			startVideo('pizzaria');
			allowCountdown = true;
			return Function_Stop;
	end
	return Function_Continue
end

--The link on the wiki for this script didn't work, so I had to copy it
--word for fucking word from an old video, thank you Catbrother Everything