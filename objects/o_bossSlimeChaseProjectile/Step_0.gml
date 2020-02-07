/// @description Insert description here
// You can write your code in this editor
staticTimer++;
if(staticTimer >= staticTime){
	speed = lerp(0,speed,0.94+lerpVar);
	
}


if(speed <= .1+lerpVar){
	instance_destroy();
}