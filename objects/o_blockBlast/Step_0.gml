/// @description Insert description here
// You can write your code in this editor
image_xscale*=1.15;
image_yscale*=1.15;

x=o_player.x;
y=o_player.y;

if(image_xscale > 2.5){
	instance_destroy();
}