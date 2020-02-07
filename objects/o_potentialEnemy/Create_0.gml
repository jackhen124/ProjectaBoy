/// @description Insert description here
// You can write your code in this editor
//randomize();
//done=false;
//if(room!=r_testRoom){
	
	/*
	if(global.roomNumber==1){
		greenSlimeChance = irandom(15);
		if(greenSlimeChance == 0&&!done){
			instance_create_layer(x,y,"enemies",o_greenSlime);
			done=true;
		}
		yellowSlimeChance = irandom(31);
		if(yellowSlimeChance == 0&&!done){
			instance_create_layer(x,y,"enemies",o_yellowSlime);
			done=true;
		}
		purpleSlimeChance = irandom(47);
		if(purpleSlimeChance == 0&&!done){
			instance_create_layer(x,y,"enemies",o_bigPurpleSlime);
			done=true;
		}
	
	}else if(global.roomNumber==2){
		greenSlimeChance = irandom(16);
		if(greenSlimeChance == 0&&!done){
			instance_create_layer(x,y,"enemies",o_greenSlime);
			done=true;
		}
		yellowSlimeChance = irandom(28);
		if(yellowSlimeChance == 0&&!done){
			instance_create_layer(x,y,"enemies",o_yellowSlime);
			done=true;
		}
		purpleSlimeChance = irandom(40);
		if(purpleSlimeChance == 0&&!done){
			instance_create_layer(x,y,"enemies",o_bigPurpleSlime);
			done=true;
		}
	}else if(global.roomNumber==3){
		greenSlimeChance = irandom(17);
		if(greenSlimeChance == 0&&!done){
			instance_create_layer(x,y,"enemies",o_greenSlime);
			done=true;
		}
		yellowSlimeChance = irandom(26);
		if(yellowSlimeChance == 0&&!done){
			instance_create_layer(x,y,"enemies",o_yellowSlime);
			done=true;
		}
		purpleSlimeChance = irandom(35);
		if(purpleSlimeChance == 0&&!done){
			instance_create_layer(x,y,"enemies",o_bigPurpleSlime);
			done=true;
		}
	}
}else{
	if(!instance_exists(o_bigPurpleSlime)){
		instance_create_layer(x,y,"enemies",o_bigPurpleSlime);
	}
}

