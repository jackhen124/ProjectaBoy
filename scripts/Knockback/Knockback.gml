if(knockback > 0){
	x+=lengthdir_x(knockback/knockbackResistance,hitDir);
	y+=lengthdir_y(knockback/knockbackResistance,hitDir);
	knockback--;
}