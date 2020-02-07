

if(place_meeting(x,y,argument0)){
	var nearestInst = instanceNthNearest(x,y,argument0,2);
	if(nearestInst.x > x){
		x = x - argument1;
	}else if(nearestInst.x < x){
		x = x + argument1;
	}
	if(nearestInst.y > y){
		y = y - argument1;
	}else if(nearestInst.y < y){
		y = y + argument1;
	}
}