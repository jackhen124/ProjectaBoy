/// @description Insert description here
// You can write your code in this editor
staticTimer++;
if(staticTimer >= staticTime){
	speed = lerp(0,speed,0.97-irandom_range(0,2)*.01);
	
}


if(speed <= .08){
	instance_destroy();
}