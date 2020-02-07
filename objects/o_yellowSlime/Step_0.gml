/// @description Insert description here
// You can write your code in this editor
event_inherited();

if(state = slimeState.landing && shotReady){
	instance_create_layer(x,y,"enemyProjectiles",o_yellowSlimeProjectile);
	instance_create_layer(x,y,"enemyProjectiles",o_yellowSlimeProjectile);
	instance_create_layer(x,y,"enemyProjectiles",o_yellowSlimeProjectile);
	shotReady = false;
	
}

