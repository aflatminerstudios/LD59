

function handleLevelComplete(levelNumber, goalNumber){
	live_auto_call;


	PRINT("handleLevelComplete: " + string(levelNumber) + ", goal #" + string(goalNumber));
	var waitTimeInFrames = 90;
	
	// Play a success sound -- Micha TODO
	
	
	
	switch (levelNumber) {
		case 1:
			global.level_state_1 = goalNumber;
			break;
		case 2:
			global.level_state_2 = goalNumber;
			break;
		case 3:
			global.level_state_3 = goalNumber;
			break;
		case 4:
			global.level_state_4 = goalNumber;
			break;
		case 5:
			global.level_state_5 = goalNumber;
			break;
	}
	
	with(objGameControl) {
		alarm[0] = waitTimeInFrames;
	}
}