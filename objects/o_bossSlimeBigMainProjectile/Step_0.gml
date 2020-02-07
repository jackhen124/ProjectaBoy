/// @description Insert description here
// You can write your code in this editor


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
	for(var i = 0; i < 360; i+=36){
		var proj = instance_create_layer(x,y,"enemyProjectiles",o_bossSlimeBigSubProjectile);
		with(proj){
			direction=i;
		}
	}
	instance_destroy();
}

