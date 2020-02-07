/// @description Insert description here
// You can write your code in this editor
if(sprite_index==s_playerDead){
	
	image_speed=0;
	image_index = image_number - 1;
	if(!deadDone){
		instance_create_layer(x,y,"continueScreen",o_continueScreen);
		deadDone=true;
	}
}