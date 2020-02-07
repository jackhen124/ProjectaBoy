if(gamepad_button_check_pressed(4,gp_face1)||
gamepad_button_check_pressed(4,gp_face2)||
gamepad_button_check_pressed(4,gp_face3)||
gamepad_button_check_pressed(4,gp_face4)){
	global.gamePadControl = true;
	return true;
}else{
	return false;
}