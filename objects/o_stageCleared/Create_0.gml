/// @description Insert description here
// You can write your code in this editor
timer=0;
time = 135;
//boss = ceil(global.roomNumber / 4);
//stage = global.roomNumber - (4*(boss-1));
text = "Stage " + string(global.areaNumber) + " - " + string(global.levelNumber) + " Cleared!";
rot = 0;
if(instance_exists(o_enemyProjectile)){
	with(o_enemyProjectile){
		instance_destroy();
	}
}
