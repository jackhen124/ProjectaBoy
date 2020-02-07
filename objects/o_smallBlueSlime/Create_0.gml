/// @description Insert description here
// You can write your code in this editor
event_inherited();
yScale = 1.5;
xScale = 1.44;
image_xscale = xScale;
image_yscale = yScale;
knockbackResistance = 10;
deadSprite = s_smallBlueSlimeDead;
maxHp = 20;
hp=maxHp;

jumpTime = 15;
landFriction = .91;

jumpSpeed = 2.2;

shotReady = true;

baseWait = 15;
randWait = 15;
waitTimer=0;

randJumpDir = 75;
isPurpleSlime=false;

sightRadius = 1000;
extraSightRadius = 1000;


spawnSpeed = 16;
var playerDir = point_direction(x,y,o_player.x,o_player.y)
spawnSpeedX = lengthdir_x(jumpSpeed,playerDir);// *.75;
spawnSpeedY = lengthdir_y(jumpSpeed,playerDir);// *1.25;


