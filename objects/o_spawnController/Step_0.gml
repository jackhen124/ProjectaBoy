/// @description Insert description here
// You can write your code in this editor
if(spawning&&!done){
	spawnTimer++;
	if(spawnTimer>=spawnTime){
		spawnTimer=0;
		spawnedCounter++;
		if(spawnedCounter>=numTotal/totalWaves){
			spawning=false;
			spawnedCounter=0;
		}
		show_debug_message("numtotal=  " + string(numTotal) + " totalwaves= " + string(totalWaves));
		show_debug_message("spawning enemy " + string(spawnedCounter) + " out of " + string(numTotal/totalWaves));
		spawnTimer=0;
		xLoc = irandom_range(xMin,xMax);
		yLoc = irandom_range(yMin,yMax);
		var rand  = irandom_range(1,numEnemy1+numEnemy2+numEnemy3+numEnemy4);
		show_debug_message("numEnemy1 = " + string(numEnemy1));
		show_debug_message("numEnemy2 = " + string(numEnemy2+numEnemy1));
		show_debug_message("numEnemy3 = " + string(numEnemy3+numEnemy2+numEnemy1));
		show_debug_message("numEnemy4 = " + string(numEnemy4+numEnemy3+numEnemy2+numEnemy1));
		show_debug_message("rand = " + string(rand));
		var enemy = instance_create_layer(xLoc,yLoc,"spawners",o_spawnIndicator);
		
		if(rand<=numEnemy1){
			with(enemy){
				enemyType=other.enemy1;
			}
			numEnemy1--;
		}else if(rand<=numEnemy2+numEnemy1){
			with(enemy){
				enemyType=other.enemy2;
			}
			numEnemy2--;
		}else if(rand<=numEnemy3+numEnemy2+numEnemy1){
			with(enemy){
				enemyType=other.enemy3;
			}
			numEnemy3--;
		}else if(rand<=numEnemy4+numEnemy3+numEnemy2+numEnemy1){
			with(enemy){
				enemyType=other.enemy4;
			}
			numEnemy4--;
		}else{
			show_debug_message("error!!");
		}
		if(numEnemy4+numEnemy3+numEnemy2+numEnemy1<=0){
			spawning=false;
			done=true;
		}
		
	}
}else if(!done){
	if(!instance_exists(o_enemy)){
		curWave++;
		spawning = true;
		spawnedCounter=0;
	}
	
	
}else if(!instance_exists(o_enemy)){
	instance_create_layer(x,y,layer,o_stageCleared);
	instance_destroy();
}