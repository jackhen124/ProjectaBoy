/// @description Insert description here
// You can write your code in this editor
staticTimer++;
if(staticTimer >= staticTime){
	speed = lerp(0,speed,(0.95+(irandom_range(-2,2)*.01)));
	
}


if(speed <= .15){
	instance_destroy();
}