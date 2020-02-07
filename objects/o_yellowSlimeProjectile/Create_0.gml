/// @description Insert description here
// You can write your code in this editor
randomize();
rand = irandom_range(-50,50);
direction = point_direction(x,y,o_player.x,o_player.y)+rand;
speed = 2.5;
image_xscale = .9;
image_yscale = .9;

staticTimer = 0;
staticTime = 7+irandom_range(-3,3);