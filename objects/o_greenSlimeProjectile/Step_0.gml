/// @description Insert description here
// You can write your code in this editor
staticTimer++;
if(staticTimer >= staticTime){
	speed = lerp(0,speed,0.97);
	
}


if(speed <= .12){
	instance_destroy();
}