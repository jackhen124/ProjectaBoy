/// @description Insert description here
// You can write your code in this editor

speed = global.projectileSpeed;
rangeTimer = 0;
pierceList = ds_list_create();
returning = false;
xEnd=o_aimIndicator.x;
yEnd=o_aimIndicator.y;
onRight = o_aimIndicator.x<x;
above = o_aimIndicator.y>y;
yDone=false;
xDone=false;
startX = x;
startY = y;
hotShotStreak = 0;


