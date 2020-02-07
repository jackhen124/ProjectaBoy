if(o_player.invulnerable <= 0 && !o_player.dead){
	
	Screenshake(6,45);
	global.hp--;
	if(global.doubleDamageTaken)global.hp--;
	o_player.invulnerable = o_player.invulnerableTime;
	o_player.blinking = o_player.invulnerable;
}
