/// @description Insert description here
// You can write your code in this editor


if(!instance_exists(o_enemy)){
	timer++;
	if(timer > 5&&!stageClearedDone){
		instance_create_layer(x,y,layer,o_stageCleared);
		stageClearedDone=true;
	}
	
	
}
