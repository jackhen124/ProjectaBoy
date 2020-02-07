/// @description Insert description here
// You can write your code in this editor

//rangeTimer++;
//if(global.boomerang){
	/*
	var lerpVar = .03;
	if(rangeTimer+global.projectileRange*.2 > global.projectileRange){  
		speed = lerp(speed,global.projectileSpeed*.2,1-lerpVar);
	}
	if(!returning){
		if(above){
	if(y>yEnd){
		yDone=true;
	}
	}else if(y<yEnd){
		yDone=true;
	}

	if(onRight){
		if(x<xEnd){
			xDone=true;	
		}

	}else if(x<xEnd){
		xDone=true;
	}
	if(xDone&&yDone){
		direction = point_direction(x,y,o_player.x,o_player.y);
		returning = true;
		ds_list_clear(pierceList);
		rangeTimer = 0;
		}	
	}else{
		speed = lerp(speed,global.projectileSpeed,1+lerpVar);
		if(rangeTimer > global.projectileRange){
			instance_destroy();
		}
	}
	*/
//}else if(rangeTimer > global.projectileRange){
if(!point_in_circle(x,y,startX,startY,global.projectileRange+(global.baseProjectileRange*.2*hotShotStreak)) && !returning){	
		
		if(global.boomerang){
			returning=true;
			startX=x;
			startY=y;
		}else{
			if(ds_list_empty(pierceList)){
				o_player.currentHitStreak = 0;
			}
			instance_destroy();
		}
		
	
	
}
if(returning){
	if(speed>-global.projectileSpeed){
		speed-=.1*global.projectileSpeed;
	}
	if(!point_in_circle(x,y,startX,startY,global.projectileRange)){
		if(ds_list_empty(pierceList)){
			o_player.currentHitStreak = 0;
		}
		instance_destroy();
	}
}