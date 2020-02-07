/// @description Insert description here
// You can write your code in this editor
/*
draw_self();
if(GUNSTATE == GUNSTATE.RELOADING){
	var reloadPercent = (reloadTimeCounter / reloadTime) * 100;
	draw_healthbar(obj_player.x - 35, obj_player.y - 50, obj_player.x + 35, obj_player.y - 45, 
	reloadPercent, c_black, c_yellow, c_yellow, 0, true, false );
}

//if(specialAiming){
	//draw_set_color(c_red);
	//draw_line(x + lengthdir_x(38, image_angle - 90), y + lengthdir_y(38, image_angle - 90),
	//x + lengthdir_x(500, image_angle - 90), y + lengthdir_y(500, image_angle - 90));
//}