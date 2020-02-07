/// @description Insert description here
// You can write your code in this editor
cursorSpeed = 8;

choice = false;
if(instance_exists(o_player)){
	
	image_xscale*=3;
	image_yscale*=3;
	choice=true;
}
secondUpgrade = false;
nextRoom = noone;
if(global.levelNumber==4){
	nextRoom = r_spawnRoom;
}else{
	nextRoom = r_spawnRoom;
}