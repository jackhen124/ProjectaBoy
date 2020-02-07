/// @description update camera

//update destination
if(instance_exists(follow)){
	xTo = follow.x;
	yTo = follow.y;
}

//stage camera
if(instance_exists(obj_stageEnder)){
	var stageEnder = instance_nearest(obj_player.x, obj_player.y, obj_stageEnder);
	seTop = stageEnder.bbox_top;
	seBottom = stageEnder.bbox_bottom;
	seLeft = stageEnder.bbox_left;
	seRight = stageEnder.bbox_right;
	seWidth = abs(seRight - seLeft);
	seHeight = abs(seBottom - seTop);
	if(stageEnder.triggered && !stageEnder.stageCleared){
		xTo = clamp(xTo, seLeft + view_w_half, seRight - view_w_half);
		yTo = clamp(yTo, seTop + view_h_half, seBottom - view_h_half);
		if(camera_get_view_width(cam) > seWidth){
			xTo = stageEnder.x;
		}
		if(camera_get_view_height(cam) > seHeight){
			yTo = stageEnder.y;
		}
				
	}
}

//update object position
if(obj_transition.mode == TRANS_MODE.INTRO){
	x += (xTo - x);
	y += (yTo - y);
}else{
	x += (xTo - x) / 20;
	y += (yTo - y) / 20;
}

x = clamp(x, view_w_half, room_width - view_w_half);
y = clamp(y, view_h_half, room_height - view_h_half);




if(instance_exists(obj_rightCamEdge)){
	if(collision_rectangle( x - view_w_half, y + view_h_half, x + view_w_half, 
	y - view_h_half, obj_rightCamEdge, false, true ) != noone){
		x = clamp(x, 0, obj_rightCamEdge.x - view_w_half)
	}
	
}

if(instance_exists(obj_leftCamEdge)){
	if(collision_rectangle( x - view_w_half, y + view_h_half, x + view_w_half, 
	y - view_h_half, obj_leftCamEdge, false, true ) != noone){
		x = clamp(x, obj_leftCamEdge.x + view_w_half, room_width);
	}
	
}

if(instance_exists(obj_lowerCamEdge)){
	if(collision_rectangle( x - view_w_half, y + view_h_half, x + view_w_half, 
	y - view_h_half, obj_lowerCamEdge, false, true ) != noone){
		y = clamp(y, 0, obj_lowerCamEdge.y - view_h_half);
	}
	
}

if(instance_exists(obj_upperCamEdge)){
	if(collision_rectangle( x - view_w_half, y + view_h_half, x + view_w_half, 
	y - view_h_half, obj_upperCamEdge, false, true ) != noone){
		y = clamp(y, obj_upperCamEdge.y + view_h_half, room_height);
	}
	
}





		
	

x+= random_range(-shake_remain, shake_remain);
y+= random_range(-shake_remain, shake_remain);
shake_remain = max(0, shake_remain - ((1 / shake_length) * shake_magnitude)); 


//update camera view

camera_set_view_pos(cam, x - view_w_half, y - view_h_half);


	
