/// @description Insert description here
// You can write your code in this editor
event_inherited();

if(state = slimeState.landing && shotReady){
	//instance_create_layer(x,y,"enemyProjectiles",o_greenSlimeProjectile);
	
	shotReady = false;
	
}
if(global.levelNumber==global.levelsPerArea){
	if(spawnSpeed >= .5){
		x_speed_=spawnSpeedX*spawnSpeed;
		y_speed_=spawnSpeedY*spawnSpeed;
		spawnSpeed=lerp(0,spawnSpeed,.96);
		knockback=2;

	}
}





