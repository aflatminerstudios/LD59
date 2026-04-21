///End level


bgSprite = sprGoalBGComplete
sprite_index = sprGoalComplete




//alarm[1] = game_get_speed(gamespeed_fps) / 2
//show_message("You win!")

var currentLevel = 1;

switch(room) {
	case roomLevel1:
		currentLevel = 1;
		break;
	case roomLevel2:
		currentLevel = 2;
		break;
	case roomLevel3:
		currentLevel = 3;
		break;
	case roomLevel4:
		currentLevel = 4;
		break;
	case roomLevel5:
		currentLevel = 5;
		break;
}

instance_destroy(other)

handleLevelComplete(currentLevel, goalNumber);

