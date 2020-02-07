/// @description Insert description here
// You can write your code in this editor

spawnTime = 60;
spawnTimer = 0;
spawnedCounter=0;
spawning = true;
curWave = 1;
done=false;
xMin = 132;
xMax = room_width - xMin;
yMin = 132;
yMax = room_height-yMin;
show_debug_message("areaNumber: " + string(global.areaNumber));
show_debug_message("levelNumber: " + string(global.levelNumber));
if(global.areaNumber==1){
	totalWaves = 2;
	enemy1=o_smallBlueSlime;
	enemy2=o_greenSlime;
	enemy3=o_yellowSlime;
	enemy4=o_bigPurpleSlime;
	numEnemy1=irandom_range(3,5);
	numEnemy2=irandom_range(2,3);
	numEnemy3=irandom_range(1,2);
	numEnemy4=0;
	if(global.levelNumber==1){
		
		
	}else if(global.levelNumber==2){
		numEnemy1+=1;
		numEnemy2+=1;
		numEnemy3+=1;
		numEnemy4+=1;
	}else if(global.levelNumber==3){
		numEnemy1+=irandom_range(2,3);
		numEnemy2+=irandom_range(1,2);
		numEnemy3+=irandom_range(1,2);
		numEnemy4+=irandom_range(1,2);
	}
}
numTotal = numEnemy1+numEnemy2+numEnemy3+numEnemy4;