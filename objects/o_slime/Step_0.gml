/// @description Insert description here
// You can write your code in this editor
/*
if(y_speed_ > jumpSpeed*.8){
	image_index = 3;
}else {
	image_index = 2;
	if (x_speed_ > 0) {
		image_index = 1;	
	} else if (x_speed_ < 0) {
		image_index = 2;	
	}
}
*/
//if(o_player.dead)state=slimeState.idle;
if(knockback<=0 || strongAttack){
	
	switch(state){
		case slimeState.idle:
			//text = "idle";
			image_xscale = lerp(image_xscale,xScale,.95);
			image_yscale = lerp(image_yscale,yScale,.95);
			x_speed_=0;
			y_speed_=0;
			if(playerDetected){
				state = slimeState.waiting;
			}
			break;
		
		case slimeState.waiting:
			//text = "waiting";
			x_speed_ = 0;
			y_speed_ = 0;
			waitTimer++;
			image_xscale = lerp(image_xscale, xScale*1.1, .08*(waitTimer / waitTime));
			image_yscale = lerp(image_yscale, yScale*.7, .08*(waitTimer / waitTime));
			
			if(x < o_player.x){
				image_index = 1;
			}else{
				image_index = 0;
			}
			if(waitTimer >= waitTime){
				waitTimer = 0;
				randomize();
				waitTime = baseWait + irandom(randWait);
				state = slimeState.jumping;
				var playerDir = point_direction(x,y,o_player.x,o_player.y) +irandom_range(-randJumpDir,randJumpDir);
				x_speed_ = lengthdir_x(jumpSpeed,playerDir);// *.75;
				y_speed_ = lengthdir_y(jumpSpeed,playerDir);// *1.25;
				image_xscale = xScale*.95;
				image_yscale = yScale*1.05;
			
			}
			break;
		
		case slimeState.jumping:
			//text = "jumping";
			jumpTimer++;
		
			if(y_speed_ < -jumpSpeed*.8){
				image_index = 2;
			}else if(x_speed_ <0){
				image_index = 0;
			}else{
				image_index = 1;
			}
			if(jumpTimer >= jumpTime){
				jumpTimer = 0;
				state = slimeState.landing;
				shotReady = true;
				image_xscale = xScale*1.2;
				image_yscale = yScale*.8;
			}
			break;
		case slimeState.landing:
			text = "landing";
			x_speed_ = lerp(0, x_speed_, landFriction);
			y_speed_ = lerp(0,  y_speed_, landFriction);
			var stopSpeed = jumpSpeed*.1;
			image_xscale = lerp(image_xscale, xScale,.1);
			image_yscale = lerp(image_yscale, xScale,.1);
			if(abs(x_speed_) < stopSpeed && abs(y_speed_) < stopSpeed){
				//x_speed_ = 0;
				//y_speed_ = 0;
				state = slimeState.waiting;
			}
			break;
	}
}else{
	//text = "knockback";
	image_xscale = xScale*0.8;
	image_yscale = yScale*1.2;
	if(!strongAttack){
		state = slimeState.waiting;
		jumpTimer=0;
	}
	
	//waitTimer=0;
	
}
if(!playerDetected){
	state = slimeState.idle;	
}

event_inherited();

/*
	case slimeState.jumpingUp:
		jumpUpTimer++;
		y=y-.25;
		if(jumpUpTimer >= jumpUpTime){
			jumpUpTimer = 0;
			state = slimeState.jumpingDown;
			
		}
		break;
		
	case slimeState.jumpingDown:
		jumpDownTimer++;
		y+=.25;
		if(jumpDownTimer >= jumpDownTime){
			jumpDownTimer = 0;
			state = slimeState.landing;
			shotReady = true;
		}
		break;
	*/
	