

if(hp <= 0){
	if(isPurpleSlime){
		instance_create_layer(x-10,y-10,"enemies",o_smallPurpleSlime);
		instance_create_layer(x-5,y-5,"enemies",o_smallPurpleSlime);
		instance_create_layer(x+5,y+5,"enemies",o_smallPurpleSlime);
		instance_create_layer(x+10,y+10,"enemies",o_smallPurpleSlime);
	}
	var corpse = instance_create_layer(x,y,"deadEnemies", o_deadEnemy);
	with(corpse){
		sprite_index = other.deadSprite;
		image_xscale = other.xScale;
		image_yscale = other.yScale;
		hitDir = other.hitDir;
		knockback = other.knockback;
		knockbackResistance = other.knockbackResistance*.9;
		image_index = other.image_index;
		isPurpleSlime = other.isPurpleSlime;
	}
	//if(instance_number(o_enemy) <= 1){
		//instance_create_layer(x,y,"nextLevelDoor",o_nextLevelDoor)
	//}
	instance_destroy();
	
}


if(point_in_circle(o_player.x,o_player.y,x,y,sightRadius) && !collision_line(x,y,o_player.x,o_player.y,o_wallCollision,0,1 )){
	playerDetected = true;	
	sightRadius = extraSightRadius;
}else{
	playerDetected = false;
}

//move and collision
if(knockback > 0){
	
	var ld = knockback/(knockbackResistance);
	var totalKb = (global.baseProjectileKnockback * global.hitStunStat) / knockbackResistance;
	xMove = x_speed_*(knockback/totalKb) + lengthdir_x(ld,hitDir);
	yMove = y_speed_*(knockback/totalKb) + lengthdir_y(ld,hitDir);
	//xMove = lengthdir_x(ld,hitDir);
	//yMove = lengthdir_y(ld,hitDir);
	knockback--;
}else{
	xMove = x_speed_
	yMove = y_speed_
}
if(o_player.dead==true){
	xMove=0;
	yMove=0;
}

/*
if(place_meeting(x,y,o_enemy)){
	var nearestInst = instanceNthNearest(x,y,o_enemy,2);
	if(nearestInst.x > x){
		xMove = xMove - .5;
	}else if(nearestInst.x < x){
		xMove = xMove + .5;
	}
	if(nearestInst.y > y){
		yMove = yMove - .5;
	}else if(nearestInst.y < y){
		yMove = yMove + .5;
	}
}
*/



if(place_meeting(x + xMove, y, o_wallCollision)){
	while(!place_meeting(x + sign(xMove), y, o_wallCollision)){
		x = x + sign(xMove);
	}
	xMove = 0;
}
x = x + xMove;


if(place_meeting(x, y + yMove, o_wallCollision)){
	while(!place_meeting(x, y + sign(yMove), o_wallCollision)){
		y = y + sign(yMove);
	}
	yMove = 0;
	
}
y = y + yMove;



/*
x += x_speed_;

// Right collisions
if x_speed_ > 0 {
	if (grid_place_meetingEnemy(levelMaker.grid_)) {
		x = bbox_right&~(CELL_WIDTH-1);
		x -= bbox_right-x;
		x_speed_ = 0;
	}
} else if x_speed_ < 0 {
	// Left collisions
	if (grid_place_meetingEnemy(levelMaker.grid_)) {
		x = bbox_left&~(CELL_WIDTH-1);
		x += CELL_WIDTH+x-bbox_left;
		x_speed_ = 0;
	}
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

/*
// Move vertically
y += y_speed_;
// Vertical collisions
if y_speed_ > 0 {
	// Bottom collisions
	if (grid_place_meetingEnemy(levelMaker.grid_)) {
		y = bbox_bottom&~(CELL_HEIGHT-1);
		y -= bbox_bottom-y;
		y_speed_ = 0;
	}
} else if y_speed_ < 0 {
	// Top collisions
	if (grid_place_meetingEnemy(levelMaker.grid_)) {
		y = bbox_top&~(CELL_HEIGHT-1);
		y += CELL_HEIGHT+y-bbox_top;
		y_speed_ = 0;
	}
}
