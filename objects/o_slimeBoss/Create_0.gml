/// @description Insert description here
// You can write your code in this editor
event_inherited();
maxHp = 1050;
hp = maxHp;
xScale = 2.5;
yScale = 3;
image_xscale = xScale;
image_yscale = yScale;

knockbackResistance=30;

enum bossState{
	
	resting,
	chasing,
	shootingBig,
	shootingSmall,
	spawning,
}

state = bossState.resting;
lastState = 0;

restTimer = 0;
restTime = 240;

chaseCounter = 0;
chaseCount = 4;
enum chaseState{
	preparing,
	jumping,
	landing,
}
stateC = chaseState.preparing;
prepareTimer=0;
prepareTime=60;
jumpSpeed = 3.9;
jumpTimer = 0;
jumpTime = 50;
landFriction=.94;
shotReady=true;

shootingSmallCounter = 0;
shootingSmallCount = 4;
smallDelayTimer = 0;
smallDelayTime = 80;

shootingBigCounter = 0;
shootingBigCount = 5;
bigDelayTimer = 0;
bigDelayTime = 80;

spawnCounter = 0;
spawnCount = 4;
spawnDelayTimer = 0;
spawnDelayTime = 120;

text2="";







