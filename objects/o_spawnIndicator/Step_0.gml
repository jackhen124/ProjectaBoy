/// @description Insert description here
// You can write your code in this editor
image_angle++;

//image_xscale+=lengthdir_x(.1,90-image_angle);
//image_yscale+=lengthdir_x(.1,90-image_angle);


waitTimer++;
if(waitTimer>=waitTime && !finished){
	instance_create_layer(x,y,"enemies", enemyType);
	finished=true;
}else if(finished){
	image_alpha-=.008;
	if(image_alpha<= .01){
		instance_destroy();
	}
}
