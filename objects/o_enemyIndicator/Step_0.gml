/// @description Insert description here
// You can write your code in this editor

if(instance_exists(o_enemy)){
	var nearest = instance_nearest(o_player.x,o_player.y,o_enemy);
	//if enemy is off-sreen
	//var xOut = nearest.x>o_player.x+512 || nearest.x<o_player-512;
	//var yOut = nearest.y>o_player+384||nearest.y<o_player-384;
	//text = "xOut: " + string(xOut) + ", yOut: " + string(yOut);
	//if(xOut&&yOut){
		//visible=true;
		//text = "visable";
	//}else{
		//visible=false;
		//text = "not visible";
	//}
	var w = camera_get_view_width(view_camera[0])/2 + 50;
	var h = camera_get_view_height(view_camera[0])/2 + 50;
	
	if(point_in_rectangle(nearest.x,nearest.y,o_camera.x-w,o_camera.y-h,o_camera.x+w,o_camera.y+h)){
		visible=false;
	}else{
		visible = true;
	}
	
	var targetDir = point_direction(o_player.x,o_player.y,nearest.x,nearest.y);
	image_angle = targetDir+90;
	x = o_player.x +lengthdir_x(40,targetDir);
	y = o_player.y+ lengthdir_y(40,targetDir);
}else{
	visible=true;	
}



