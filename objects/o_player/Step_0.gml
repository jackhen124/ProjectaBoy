/// @description Insert description here
// You can write your code in this editor

var _x_input = keyboard_check(ord("D")) - keyboard_check(ord("A"));

var _y_input = keyboard_check(ord("S")) - keyboard_check(ord("W"));
if(!dead){
	
	if(global.gamePadControl){
	
		//x input
		if(abs(gamepad_axis_value(4, gp_axislh)) > 0.2){
			gamePadControl = true;
			leftMove = abs(min(gamepad_axis_value(4, gp_axislh), 0));
			rightMove = max(gamepad_axis_value(4, gp_axislh), 0);
	
			if(leftMove > 0){
			_x_input = -leftMove;
			}else if(rightMove > 0){
			_x_input = rightMove;
			}
		}

		//y input
		if(abs(gamepad_axis_value(4, gp_axislv)) > 0.2){
			downMove = abs(min(gamepad_axis_value(4, gp_axislv), 0));
			upMove = max(gamepad_axis_value(4, gp_axislv), 0);
	
			if(downMove > 0){
				_y_input = -downMove;
			}else if(upMove > 0){
				_y_input = upMove;
			}
		}
		var stickH = gamepad_axis_value(4, gp_axisrh);
		var stickV = gamepad_axis_value(4, gp_axisrv);
		if(abs(stickH) > .1 || abs(stickV) > .1){
			aiming = true;
		}else{
			aiming = false;
		}
		var stickAngle = point_direction(0,0,stickH,stickV);
		shootAngle = stickAngle;
	
	}


	if(!global.gamePadControl){
		shootAngle = point_direction(x, y, mouse_x, mouse_y) ;
	}

	var dodgePressed = mouse_check_button_pressed(mb_right) || gamepad_button_check_pressed(4,gp_shoulderlb) || gamepad_button_check_pressed(4,gp_shoulderl);
	shooting = mouse_check_button(mb_left) || gamepad_button_check(4, gp_shoulderrb) || gamepad_button_check(4, gp_shoulderr);

	shootTimer+=fireRate;
	if(extraSpicy >0 && global.extraSpicy)shootTimer+=(fireRate*.3);
	if(extraSpicy>0)extraSpicy--;
	invulnerable--;
	blinking--;
	if(blockSpeed >1){
		blockSpeed--;
	}else{
		o_crown.visible = false;
	}

	switch(state){
		case playerState.normal:
		
			landTimer++;
			if(landTimer>=landTime){
				if(max_speed_<base_maxSpeed){
					//max_speed_ = lerp(max_speed_,base_maxSpeed,1.03);
					max_speed_+=.05;
				}
			
			}
			x_speed_ += _x_input * acceleration_;
			y_speed_ += _y_input * acceleration_;
			var _speed = point_distance(0, 0, x_speed_, y_speed_);
			var _direction = point_direction(0, 0, x_speed_, y_speed_);
			if (_speed > max_speed_) {
				x_speed_ = lengthdir_x(max_speed_, _direction);
				y_speed_ = lengthdir_y(max_speed_, _direction);
			}
			if (_x_input == 0) {
				x_speed_ = lerp(x_speed_, 0, .3);
			}
			if (_y_input == 0) {
				y_speed_ = lerp(y_speed_, 0, .3);
			}
			if (_x_input == 0 && _y_input == 0) {
				sprite_index = s_player;
			} else {
				sprite_index = s_playerRunning;
			}
			if (x_speed_ > 0) {
				image_xscale = 1;	
			} else if (x_speed_ < 0) {
				image_xscale = -1;	
			}
			if(shooting && shootTimer >= firingDelay){
				shootTimer = 0;
				var projectile = instance_create_layer(x,y,"playerProjectiles",o_projectile);
				with(projectile){
					direction = other.shootAngle;
				}
			}
			if(dodgePressed &&(abs(x_speed_)>0||abs(y_speed_)>0)){
				//x_speed_ = lerp(x_speed_, 0, .2);
				//y_speed_ = lerp(y_speed_, 0, .2);
				//x_speed_ = 0;
				//y_speed_ = 0;
				x_speed_ = lengthdir_x(dodgeSpeed, _direction);
				y_speed_ = lengthdir_y(dodgeSpeed, _direction);
				dodgeTimer = 0;
				state = playerState.dodging;
			
			
			}
			break;
		case playerState.dodging:
		
			sprite_index = s_playerDodging;
		
			image_angle = (dodgeTimer/dodgeTime)*360 * -sign(x_speed_);
			dodgeTimer++;
			if(dodgeTimer >= dodgeTime){
				state = playerState.landing;
				dodgeTimer = 0;
			}
			break;
		case playerState.landing:
			max_speed_=.5;
			sprite_index = s_player;
			landTimer=0;
			image_angle=0;
			state = playerState.normal;
		
			break;
	
	
	}






	//wall collision
	if(place_meeting(x + x_speed_, y, o_wallCollision)){
		while(!place_meeting(x + sign(x_speed_), y, o_wallCollision)){
			x = x + sign(x_speed_);
		}
		x_speed_ = 0;
	}
	x = x + x_speed_;

	if(place_meeting(x, y + y_speed_, o_wallCollision)){
		while(!place_meeting(x, y + sign(y_speed_), o_wallCollision)){
			y = y + sign(y_speed_);
		}
		y_speed_ = 0;
	}
	y = y + y_speed_;
}else if(dead){
	sprite_index=s_playerDead;
	if(instance_exists(o_enemyProjectile)){
		instance_destroy(o_enemyProjectile);
	}
	
}
	
if(global.hp<=0){
	dead = true;
	
}
	
/*
// Move horizontally

x += x_speed_;



// Right collisions

if x_speed_ > 0 {

	if (grid_place_meeting(self, o_levelMaker.grid_)) {

		x = bbox_right&~(CELL_WIDTH-1);

		x -= bbox_right-x;

		x_speed_ = 0;

	}

} else if x_speed_ < 0 {

	// Left collisions

	if (grid_place_meeting(self, o_levelMaker.grid_)) {

		x = bbox_left&~(CELL_WIDTH-1);

		x += CELL_WIDTH+x-bbox_left;

		x_speed_ = 0;

	}

}



// Move vertically

y += y_speed_;



// Vertical collisions

if y_speed_ > 0 {

	// Bottom collisions

	if (grid_place_meeting(self, o_levelMaker.grid_)) {

		y = bbox_bottom&~(CELL_HEIGHT-1);

		y -= bbox_bottom-y;

		y_speed_ = 0;

	}

} else if y_speed_ < 0 {

	// Top collisions

	if (grid_place_meeting(self, o_levelMaker.grid_)) {

		y = bbox_top&~(CELL_HEIGHT-1);

		y += CELL_HEIGHT+y-bbox_top;

		y_speed_ = 0;

	}

}