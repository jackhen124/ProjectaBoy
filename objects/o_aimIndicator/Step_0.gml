/// @description Insert description here
// You can write your code in this editor
if(o_player.aiming || !global.gamePadControl){
	visible = true;
}else{
	visible = false;
}

//if(global.gamePadControl){
	len = global.projectileRange;
	x = o_player.x+lengthdir_x(len,o_player.shootAngle);
	y = o_player.y+lengthdir_y(len,o_player.shootAngle);
//}else{
	
	//x = o_player.x+lengthdir_x(len,o_player.shootAngle);
	//y = mouse_y;
//}