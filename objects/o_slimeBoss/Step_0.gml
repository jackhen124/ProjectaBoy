/// @description Insert description here
// You can write your code in this editor
event_inherited();


switch(state){
	case bossState.resting:
		sprite_index=s_blueSlimeResting;
		image_xscale=xScale;
		image_yscale=yScale;
		x_speed_=0;
		y_speed_=0;
		text="resting";
		restTimer++;
		if(restTimer >= restTime){
			restTimer=0;
			randomize();
			var rand = irandom_range(1,4);
			while(rand==lastState){
				rand = irandom_range(1,4);
			}
			lastState = rand;
			//rand=4;
			if(rand==1){
				state = bossState.chasing;
			}else if(rand==2){
				state = bossState.shootingSmall;
				sprite_index=s_blueSlimeShooting;
				image_index=0;
			}else if(rand==3){
				state=bossState.shootingBig;
				sprite_index=s_blueSlimeShooting;
				image_index=0;
			}else if(rand==4){
				state=bossState.spawning;	
			}
		}
		break;
	case bossState.chasing:
		sprite_index = s_blueSlimeChasing;
		text2="chaseCount"+string(chaseCounter);
		if(chaseCounter >= chaseCount){
			text2="backToResting";
			state = bossState.resting;
			chaseCounter=0;
			chaseState = chaseState.preparing;
			
		}else if(stateC==chaseState.preparing){
			image_index=2;
			text="chaseState.preparing";
			prepareTimer++;
			if(prepareTimer >= prepareTime){
				prepareTimer = 0;
				stateC = chaseState.jumping;
				var playerDir = point_direction(x,y,o_player.x,o_player.y);
				x_speed_ = lengthdir_x(jumpSpeed,playerDir);
				y_speed_ = lengthdir_y(jumpSpeed,playerDir);
				image_xscale = xScale*.95;
				image_yscale = yScale*1.05;
			}
		}else if(stateC==chaseState.jumping){
			if(x_speed_>0){
				image_index=0;
			}else{
				image_index=1;
			}
			text="chaseState.jumping";
			jumpTimer++;
			if(jumpTimer>=jumpTime){
				jumpTimer=0;
				stateC=chaseState.landing;
				shotReady = true;
				image_xscale = xScale*1.2;
				image_yscale = yScale*.8;
			}
		}else if(stateC==chaseState.landing){
			image_index=3;
			if(shotReady){
				shotReady=false;
				for(var i = 0; i < 12; i++){
					instance_create_layer(x,y,"enemyProjectiles",o_bossSlimeChaseProjectile);
				}
				
			}
			text="chaseState.landing";
			x_speed_ = lerp(0, x_speed_, landFriction);
			y_speed_ = lerp(0,  y_speed_, landFriction);
			var stopSpeed = jumpSpeed*.1;
			image_xscale = lerp(image_xscale, xScale,.1);
			image_yscale = lerp(image_yscale, xScale,.1);
			if(abs(x_speed_) < stopSpeed && abs(y_speed_) < stopSpeed){
				chaseCounter++;
				x_speed_ = 0;
				y_speed_ = 0;
				stateC = chaseState.preparing;		
			}
		}
		
		break;
		
	case bossState.shootingSmall:
			sprite_index = s_blueSlimeShooting;
			
			smallDelayTimer++;
			image_xscale=lerp(image_xscale,xScale,.04);
			image_yscale=lerp(image_yscale,yScale, .04);
			if(smallDelayTimer > smallDelayTime/2){
				image_index=0;
				image_xscale = lerp(image_xscale,xScale*.9,.04);
				image_yscale = lerp(image_yscale,yScale*1.1,.04);
			}
			if(shootingSmallCounter>=shootingSmallCount){
				state = bossState.resting;
				shootingSmallCounter=0;
			}else if(smallDelayTimer>=smallDelayTime){
				image_index=1;
				image_xscale=xScale*1.15;
				image_yscale=yScale*.85;
				shootingSmallCounter++;
				smallDelayTimer=0;
				for(var i = 0; i < 15; i++){
					instance_create_layer(x,y,"enemyProjectiles",o_bossSlimeSmallProjectile);
				}
			}
		break;
		
	case bossState.shootingBig:
			sprite_index = s_blueSlimeShooting;
			
			bigDelayTimer++;
			image_xscale=lerp(image_xscale,xScale,.04);
			image_yscale=lerp(image_yscale,yScale, .04);
			if(bigDelayTimer > bigDelayTime/2){
				image_index=0;
				image_xscale = lerp(image_xscale,xScale*.9,.04);
				image_yscale = lerp(image_yscale,yScale*1.1,.04);
			}
			if(shootingBigCounter>=shootingBigCount){
				state = bossState.resting;
				shootingBigCounter=0;
			}else if(bigDelayTimer>=bigDelayTime){
				image_index=1;
				image_xscale=xScale*1.15;
				image_yscale=yScale*.85;
				shootingBigCounter++;
				bigDelayTimer=0;
				
				instance_create_layer(x,y,"enemyProjectiles",o_bossSlimeBigMainProjectile);
				
			}	
		break;
		
	case bossState.spawning:
			sprite_index = s_blueSlimeSpawning;
			
			spawnDelayTimer++;
			image_xscale=lerp(image_xscale,xScale,.04);
			image_yscale=lerp(image_yscale,yScale, .04);
			if(spawnDelayTimer >spawnDelayTime/2){
				image_index=0;
				image_xscale = lerp(image_xscale,xScale*.9,.04);
				image_yscale = lerp(image_yscale,yScale*1.1,.04);
			}
			if(spawnCounter>=spawnCount){
				state = bossState.resting;
				spawnCounter=0;
			}else if(spawnDelayTimer>=spawnDelayTime){
				image_index=1;
				image_xscale=xScale*1.15;
				image_yscale=yScale*.85;
				spawnCounter++;
				spawnDelayTimer=0;
				
				instance_create_layer(x,y,"enemyProjectiles",o_smallBlueSlime);
				
			}	
		break;
}