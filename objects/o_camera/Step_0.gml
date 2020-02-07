/// @description Insert description here
// You can write your code in this editor
if not instance_exists(target_) exit;
xTo = target_.x;
yTo = target_.y;




if(instance_exists(o_boss)){
	var p = .4;
	if(o_boss.x > target_.x){
		xTo += (o_boss.x - target_.x)*p;
	}else if(o_boss.x < target_.x){
		xTo -= (target_.x - o_boss.x)*p;
	}
	if(o_boss.y > target_.y){
		yTo += (o_boss.y - target_.y)*p;
	}else if(o_boss.y < target_.y){
		yTo -= (target_.y - o_boss.y)*p;
	}
}
x = lerp(x, xTo, .1);

y = lerp(y, yTo-8, .1);


x+= random_range(-shake_remain, shake_remain);
y+= random_range(-shake_remain, shake_remain);
shake_remain = max(0, shake_remain - ((1 / shake_length) * shake_magnitude)); 





x = clamp(x, width_/2 + CELL_WIDTH, room_width-width_/2 - CELL_WIDTH);

y = clamp(y, height_/2 + CELL_HEIGHT, room_height-height_/2 - CELL_HEIGHT);

camera_set_view_pos(view_camera[0], x-width_/2, y-height_/2);



