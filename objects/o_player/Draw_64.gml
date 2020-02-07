/// @description Insert description here
// You can write your code in this editor

currentPlace = 20;
currentDrawn = 0;
var heartY = 30;
var startX = 20;
var xSpace = 48;
while(currentDrawn < global.hp){
	draw_sprite(spr_heart, 0, startX + currentPlace, heartY);
	currentPlace +=xSpace;
	currentDrawn++;
}

while(currentDrawn < global.maxHp){
	draw_sprite(spr_emptyHeart, 0, startX + currentPlace, heartY);
	currentPlace += xSpace;
	currentDrawn++;
}
//draw_text(50,50,o_enemyIndicator.text);
DrawContinues();
