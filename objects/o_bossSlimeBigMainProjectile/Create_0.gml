/// @description Insert description here
// You can write your code in this editor
randomize();
rand = irandom_range(-100,100);
direction = point_direction(x,y,o_player.x,o_player.y);
speed=2.5;
xEnd=o_player.x;
yEnd=o_player.y;
onRight = o_player.x<x;
above = o_player.y>y;
yDone=false;
xDone=false;
image_xscale = 1.6;
image_yscale = 1.6;

//staticVariance = irandom_range(-10,14);
//staticTimer = 0;
//staticTime = 6+staticVariance;

//lerpVar = irandom_range(-.03,.03)