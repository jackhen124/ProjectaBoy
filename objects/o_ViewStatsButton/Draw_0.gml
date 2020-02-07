/// @description Insert description here
// You can write your code in this editor

draw_sprite(sprite,0,x+2,y+2);
draw_set_font(f_upgradeNamesBigger);
DrawTextOutline(x,y-30,2,"View",c_black,c_white);
DrawTextOutline(x,y+10,2,"Stats",c_black,c_white);

draw_self();
/*
if(cursorHovering){
	draw_set_font(f_upgradeNamesBigger);
	draw_text_color(x,y-120,name,c_aqua,c_aqua,c_blue,c_blue,1);
	
}else{
	draw_set_font(f_upgradeNames);
	draw_text_color(x,y-100,name,c_white,c_white,c_white,c_white,1);
}
