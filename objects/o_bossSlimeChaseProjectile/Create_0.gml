/// @description Insert description here
// You can write your code in this editor
randomize();
rand = irandom_range(-100,100);
direction = point_direction(x,y,o_player.x,o_player.y)+rand;
speedVariance = irandom_range(-.8,.8);
speed = 2.7+speedVariance;
image_xscale = 1.3;
image_yscale = 1.3;

staticVariance = irandom_range(-10,14);
staticTimer = 0;
staticTime = 6+staticVariance;

lerpVar = irandom_range(-.03,.03)