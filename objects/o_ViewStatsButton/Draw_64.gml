/// @description Insert description here
// You can write your code in this editor
if(cursorHovering){
	


	DrawDisplayBox(10,display_get_gui_width()/3,display_get_gui_height()/8,
	display_get_gui_width()/3+(display_get_gui_width()/2),display_get_gui_height()/2);
	var margin = 20;
	var xLoc = display_get_gui_width()/3+margin;
	var yLoc = display_get_gui_height()/8+margin;
	var yInc = 24;
	draw_set_font(f_upgradeNames);
	//draw_text
	draw_set_color(c_white);
	draw_set_halign(fa_left);
	text = DrawStat("Damage: ",global.damageStat);
	draw_text(xLoc,yLoc,text);
	text = DrawStat("Fire-rate: ",global.fireRateStat);
	draw_text(xLoc,yLoc+yInc,text);
	text = DrawStat("Range: ",global.rangeStat);
	draw_text(xLoc,yLoc+yInc*2,text);
	text = DrawStat("Shot-Speed: ",global.shotSpeedStat);
	draw_text(xLoc,yLoc+yInc*3,text);
	text ="Pierce chance: " + string(global.pierceChance) + "%";
	draw_text(xLoc,yLoc+yInc*4,text);
	text ="Pierce Damage: "+string(global.pierceDamage*100)+"%";
	draw_text(xLoc,yLoc+yInc*5,text);
	//text = DrawStat("Pierce-chance",global.damageStat);
	//draw_text(xLoc,yLoc+2*yInc,text);
}