
/*
if(global.hp > 0){
	x = obj_player.x;
	y = obj_player.y;

	//getInputs
	if(startWait > 5){
		var stickH = gamepad_axis_value(4, gp_axisrh);
		var stickV = gamepad_axis_value(4, gp_axisrv);

		if(abs(stickH) > .5 || abs(stickV) > .5){
			var stickAngle = point_direction(0,0,stickH,stickV) + 90;
			//if(instance_exists(obj_laser)){
				//if(image_angle > stickAngle){
					//image_angle+=4;
				//}else if(image_angle < stickAngle){
					//image_angle -=4;
				//}
			//}else{
			image_angle = stickAngle;
			//}
				
			shooting = true;
		}else{
			if(global.ps4Control){
				shooting = false;
			}
			
		}
		if(global.mouseControl){
			image_angle = point_direction(x, y, mouse_x, mouse_y) + 90;
		}
		
		if(mouse_check_button(mb_left)){
			shooting = true;
		}else if(global.mouseControl){
			shooting = false;
		}
	
		if(gamepad_button_check(4, gp_shoulderrb) || keyboard_check_pressed(vk_space)){
			if(global.specialAvailable >= 1){
				specialFired = true;
				//specialAiming = true;
				//shooting = false;
			}
		}else{
			//specialAiming = false;
			specialFired = false;
		}
		//if(gamepad_button_check_released(4, gp_shoulderrb)){
			//specialFired = true;
		//}else{
			//specialFired = false;
		//}
	}

	if(startWait <= 5) {
		startWait++;
	}

	maxShots = global.clipSize ;

	if(shotsLeft == 0){
		shooting = false;
		GUNSTATE = GUNSTATE.RELOADING;
	}



	if(shooting == false && GUNSTATE == GUNSTATE.RELOADING){
		reloadTimeCounter += 1 * global.reloadSpeedStat;
		if(reloadTimeCounter >= reloadTime){
			reloadTimeCounter = 0;
			GUNSTATE = GUNSTATE.FULL;
			shotsLeft = maxShots;
		}
	}else{

		if((shooting == false && shotsLeft < maxShots) || shotsLeft == 0){
			GUNSTATE = GUNSTATE.RELOADING;
			reloadTimeCounter = 0;
		}

		if(shooting = true && shotsLeft > 0){
			GUNSTATE = GUNSTATE.ACTIVE;
			reloadTimeCounter = 0;
		}

		//if(shotsLeft == clipSize && shooting == false){
			//GUNSTATE = GUNSTATE.ACTIVE;
		//}
	}


	
	firingDelay = firingDelay - 1;
	recoil = max(0, recoil - 1);
	baseFiringDelay = 20 + (20 * global.shotgunMod);
	shotAngle = image_angle - 90;

	if(shooting && firingDelay < 0 && shotsLeft > 0){

		firingDelay = round(baseFiringDelay / global.attackSpeedStat);
	
		shotsLeft--;
		recoil = 10
		Shoot(obj_projectile, 0);
		var i = 0;
		var shotgunOffset = (14 / global.accuracyStat) + 5
		while(i < global.shotgunMod){
			Shoot(obj_projectile, -shotgunOffset - i * shotgunOffset);
			Shoot(obj_projectile, shotgunOffset + i * shotgunOffset);
			i++;
		}
	}
	
	x = x - lengthdir_x(recoil, image_angle - 90);
	y = y - lengthdir_y(recoil, image_angle - 90);


	//special

	if(global.specialRechargeCounter >= global.specialRecharge && global.specialAvailable < 1+global.extraSpecial){
		global.specialAvailable++;
		global.specialRechargeCounter = 0;
	}

	if(specialFired){
		if(global.rocketLauncher && global.specialAvailable >= 1 && !instance_exists(obj_rocket)){
		
			rocketFiring = true;
			global.specialAvailable--;
		
		}else if(global.laserCannon && global.specialAvailable >= 1 && !instance_exists(obj_laser)){
			with(instance_create_layer(x + lengthdir_x(38, image_angle - 90), 
			y + lengthdir_y(38, image_angle - 90),"top",obj_laser)){
			
				//direction = other.image_angle - 90;
				image_angle = direction - 90;
			}
			global.specialAvailable--;
		
		}else if(global.flamethrower && global.specialAvailable >= 1 && !instance_exists(obj_flamethrower)){
			flaming = true;
			global.specialAvailable--;
		}
		specialFired = false;
	}

	if(flaming){
		if(flameTimer >= flameTime){
			with(instance_create_layer(x + lengthdir_x(50, image_angle - 90), 
			y + lengthdir_y(50, image_angle - 90),"bottom",obj_flamethrower)){
				speed = 4;
				direction = other.image_angle - 90;
				//image_angle = direction + 90;
			
			}
			flameTimer = 0;
			flamesFlamed++;
		}
		flameTimer++;
		if(flamesFlamed >= (20 + (5 * global.specialUpgrade))){
			flaming = false;
			flamesFlamed = 0;
			flameTimer = flameTime;
		}
	
	}

	if(rocketFiring){
		if(rocketTimer >= rocketTime){
		
			with(instance_create_layer(x + lengthdir_x(38, image_angle - 90), 
			y + lengthdir_y(38, image_angle - 90),"top",obj_rocket)){
				//speed = 8;
				direction = other.image_angle - 90;
				image_angle = direction - 90;
			}
			rocketsFired++;
			rocketTimer = 0;
		}
		rocketTimer++;
	
		if(rocketsFired >= (4 + global.specialUpgrade)){
			rocketFiring = false;
			rocketsFired = 0;
			rocketTimer = rocketTime;
		}
	
	}

}else{
	visible = false;
}