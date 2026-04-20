live_auto_call;


var level = objMapControl.selectedLevel;

switch (level) {
	case 1:
		room_goto(roomLevel1);
		break;
		
	case 2:
		room_goto(roomLevel2);
		break;
		
	// TODO: Uncomment these lines when remaining levels are in the tree -- Micha TODO	
		
	//case 3:
	//	room_goto(roomLevel3);
	//	break;
		
	//case 4:
	//	room_goto(roomLevel4);
	//	break;
		
	//case 5:
	//	room_goto(roomLevel5);
	//	break;
		
	default:
		PRINT("Unknown level in objMapBtnSelectRepair.LeftPressed event!");
		break;
}
	
