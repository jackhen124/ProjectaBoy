/// @description Insert description here
// You can write your code in this editor

/*

currentPlace = 0;
currentDrawn = 0;

while(currentDrawn < global.hp){
	draw_sprite(spr_heart, 0, 20 + currentPlace, 20);
	currentPlace = currentPlace + 40;
	currentDrawn++;
}

while(currentDrawn < global.maxHp){
	draw_sprite(spr_emptyHeart, 0, 20 + currentPlace, 20);
	currentPlace += 40;
	currentDrawn++;
}

//room display
drawSetText(c_white, font_sign, 0, 0)
draw_text(160, 20, "ROOM " + string(global.roomNumber));

//shield
var shieldsDrawn = 0;
var currentShield = (global.shieldRechargeCounter / global.shieldRecharge) * 100;

var sOffset = 0;
while(shieldsDrawn < global.shieldActive){
	draw_healthbar(20 + sOffset, 65, 130 + sOffset, 80, 100, c_black, c_aqua, c_aqua, 0, true, false);
	sOffset += 125;
	shieldsDrawn++;
}
if(global.shieldActive < global.extraShield + 1){
	draw_healthbar(20 + sOffset, 65, 130 + sOffset, 80, currentShield, c_black, c_aqua, c_aqua, 0, true, false);
	sOffset += 125;
	shieldsDrawn++;
}

while(shieldsDrawn < global.extraShield + 1){
	draw_healthbar(20 + sOffset, 65, 130 + sOffset, 80, 0, c_black, c_aqua, c_aqua, 0, true, false);
	sOffset += 125;
	shieldsDrawn++;
}




currentDrawnG = 0;
currentPlaceG = 0;

while (currentDrawnG < obj_gun.shotsLeft){
	draw_sprite(spr_ammoFull, 0, 10 + currentPlaceG, 90);
	currentPlaceG += 20;
	currentDrawnG++;
}

while(currentDrawnG < obj_gun.maxShots){
	draw_sprite(spr_ammoEmpty, 0, 10 + currentPlaceG, 90);
	currentPlaceG += 20;
	currentDrawnG++;
}





var specialsDrawn = 0;
var currentAbilityCharge = (global.specialRechargeCounter / global.specialRecharge) * 100;
if(currentAbilityCharge > 100){
	currentAbilityCharge = 100;
}
var rOffset = 0;
while(specialsDrawn < global.specialAvailable){
	draw_healthbar(20 + rOffset, 130, 35 + rOffset, 240, 100, c_black, c_lime, c_lime, 3, true, false);
	rOffset += 30;
	specialsDrawn++;
}
if(global.specialAvailable < global.extraSpecial + 1){
	draw_healthbar(20 + rOffset, 130, 35 + rOffset, 240, currentAbilityCharge, c_black, c_red, c_orange, 3, true, false);
	rOffset += 30;
	specialsDrawn++;
}

while(specialsDrawn < global.extraSpecial + 1){
	draw_healthbar(20 + rOffset, 130, 35 + rOffset, 240, 0, c_black, c_red, c_orange, 3, true, false);
	rOffset += 30;
	specialsDrawn++;
}


