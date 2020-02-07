/// @description Insert description here
// You can write your code in this editor
timer++;
if(timer > 20){
	//instance_create_layer(x,y,"player",o_upgradeScreen);
	room_goto(r_upgradeScreen);
	if(global.hp < global.maxHp)global.hp++;
}