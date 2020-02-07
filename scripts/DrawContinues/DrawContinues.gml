currentPlace = 20;
currentDrawn = 0;
var skullY = 20;
var startX = display_get_gui_width()-40;
var xSpace = 60;
while(currentDrawn < global.continueCount){
	draw_sprite_ext(s_skull, 0, startX, skullY + currentPlace,1.5,1.5,0,c_white,1);
	currentPlace +=xSpace;
	currentDrawn++;
}

