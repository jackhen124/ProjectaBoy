/// @description Insert description here
// You can write your code in this editor
if(state != playerState.dodging){
	PlayerDamaged();
	with(other){
		instance_destroy();
	}
}
