/// @description Insert description here
// You can write your code in this editor
event_inherited();
yScale = 1.8;
xScale = 1.7;
image_xscale = xScale;
image_yscale = yScale;
knockbackResistance = 13;
deadSprite = s_yellowSlimeDead;

maxHp = 35;
hp = maxHp;
 

jumpTimer = 0;
jumpTime = 24;

jumpSpeed = 2.1;
landFriction = .91;

shotReady = true;

baseWait = 10;
randWait = 15;
randomize();
image_index = irandom_range(0,1);
waitTime = baseWait + irandom(20);
waitTimer = waitTime;

randJumpDir = 35;