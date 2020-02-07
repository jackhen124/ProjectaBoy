//screenshake and attack invulnerability
/*
if(global.shieldActive < lastShield || global.hp < lastHp){
	invulnerable = 70;
	if(global.hp>0){
		Screenshake(8, 50);
		
	}else{
		Screenshake(12, 100);
	}
	
}
lastShield = global.shieldActive;
lastHp = global.hp;


//player destroyed
if( global.hp <= 0){
	global.hp = 0;
	invulnerable = 1;
	sprite_index = spr_playerDestroyed;
	
	
}else{
	if(global.ps4Control){
	// horiz input
		if(abs(gamepad_axis_value(4, gp_axislh)) > 0.3){
			leftMove = abs(min(gamepad_axis_value(4, gp_axislh), 0));
			rightMove = max(gamepad_axis_value(4, gp_axislh), 0);
	
			if(leftMove > 0){
			horizSpeed = -leftMove * 4.5;
			}else if(rightMove > 0){
			horizSpeed = rightMove * 4.5;
			}
		}else{
			horizSpeed = 0;
		}

		//vert input
		if(abs(gamepad_axis_value(4, gp_axislv)) > 0.3){
			downMove = abs(min(gamepad_axis_value(4, gp_axislv), 0));
			upMove = max(gamepad_axis_value(4, gp_axislv), 0);
	
			if(downMove > 0){
				vertSpeed = -downMove * 4.5;
			}else if(upMove > 0){
				vertSpeed = upMove * 4.5;
			}
	
		}else{
			vertSpeed = 0;
		}
	}else if(global.mouseControl){
		if(keyboard_check(ord("W")) || keyboard_check(vk_up)){
			vertSpeed = -4.5;
		}else if(keyboard_check(ord("S")) || keyboard_check(vk_down)){
			vertSpeed = 4.5;
		}else{
			vertSpeed = 0;
		}
		if(keyboard_check(ord("A")) || keyboard_check(vk_left)){
			horizSpeed = -4.5;
		}else if(keyboard_check(ord("D")) || keyboard_check(vk_right)){
			horizSpeed = 4.5;
		}else{
			horizSpeed = 0;
		}
		
	}
//shield
if(global.shieldActive < global.extraShield + 1 && global.shieldRechargeCounter >= global.shieldRecharge){
	global.shieldActive++;
	global.shieldRechargeCounter = 0;
}


//dodge
var dodgePressed = gamepad_button_check_pressed(4, gp_shoulderlb) || mouse_check_button_pressed(mb_right);
if(dodgePressed && dodgeCooldownTimer >= dodgeCooldown){
	if(global.mineDodge){
		instance_create_layer(x,y,"bottom",obj_dodgeBomb);
	}
	
	dodging = 20 + (7 * global.dodgeUpgrade);
	invulnerable = 25 + (7 * global.dodgeUpgrade);
	dodgeCooldownTimer = 0;
}

if(dodgeCooldownTimer < dodgeCooldown){
	sprite_index = spr_playerDodgeRecharging;
	dodgeCooldownTimer++;
}else{
	sprite_index = spr_player;
}	

if(dodging > 0){
	horizSpeed = horizSpeed * 2;
	vertSpeed = vertSpeed * 2;
	sprite_index = spr_playerDodging;
	dodging--;	
}else{
	//sprite_index = spr_player;
}

if(invulnerable > 0){
	invulnerable--;
}

vertSpeed = vertSpeed * global.moveSpeedStat;
horizSpeed = horizSpeed * global.moveSpeedStat;

//hazard collision
if(place_meeting(x + horizSpeed, y, obj_hazard) && invulnerable == false){
	while(!place_meeting(x + sign(horizSpeed), y, obj_hazard)){
		x = x + sign(horizSpeed);
	}
	horizSpeed = 0;
}


if(place_meeting(x, y + vertSpeed, obj_hazard) && invulnerable == false){
	while(!place_meeting(x, y + sign(vertSpeed), obj_hazard)){
		y = y + sign(vertSpeed);
	}
	vertSpeed = 0;
}


//wall collision
if(place_meeting(x + horizSpeed, y, obj_wall)){
	while(!place_meeting(x + sign(horizSpeed), y, obj_wall)){
		x = x + sign(horizSpeed);
	}
	horizSpeed = 0;
}
x = x + horizSpeed;

if(place_meeting(x, y + vertSpeed, obj_wall)){
	while(!place_meeting(x, y + sign(vertSpeed), obj_wall)){
		y = y + sign(vertSpeed);
	}
	vertSpeed = 0;
}
y = y + vertSpeed;

	
}

if(gamepad_button_check_pressed(4, gp_face4)){
	
}







	
