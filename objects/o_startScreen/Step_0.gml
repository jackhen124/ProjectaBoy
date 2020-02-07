/// @description Insert description here
// You can write your code in this editor
if(gamepad_button_check_pressed(4,gp_face1)||
gamepad_button_check_pressed(4,gp_face2)||
gamepad_button_check_pressed(4,gp_face3)||
gamepad_button_check_pressed(4,gp_face4)){
	global.gamePadControl = true;
	SlideTransition(TRANS_MODE.GOTO,r_spawnRoom);
}
//if(gamepad_button_check_pressed(4,gp_shoulderr)){
	//global.gamePadControl = true;
	//SlideTransition(TRANS_MODE.GOTO,r_boss);
	//global.roomNumber++;
//}