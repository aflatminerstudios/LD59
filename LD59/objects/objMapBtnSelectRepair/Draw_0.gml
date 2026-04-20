live_auto_call;

switch(state) {
		
	case "hover":
		sprite_index = sprMapBtnSelectRepairHover;
		break;
		
	case "down":
		sprite_index = sprMapBtnSelectRepairOn;
		break;
		
	case "normal":
	default:
		sprite_index = sprMapBtnSelectRepairOff;
		break;
	
}

draw_self();
