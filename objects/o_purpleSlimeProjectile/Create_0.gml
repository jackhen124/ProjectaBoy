/// @description Insert description here
// You can write your code in this editor
randomize();
rand = irandom_range(-90,90);
direction = point_direction(x,y,o_player.x,o_player.y)+rand;
speedVariance = irandom_range(-.7,.7);
speed = 2.6+speedVariance;
image_xscale = 1;
image_yscale = 1;

staticVariance = irandom_range(-10,14);
staticTimer = 0;
staticTime = 6+staticVariance;