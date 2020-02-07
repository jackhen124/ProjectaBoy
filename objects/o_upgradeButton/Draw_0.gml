/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_center);
if(cursorHovering){
	draw_sprite_ext(s_highlight,0,x,y-80,4,4,0,c_black,1);
}
draw_sprite(sprite,0,x+2,y+2);

draw_self();

if(cursorHovering){
	draw_set_font(f_upgradeNamesBigger);
	draw_text_color(x,y-120,name,c_aqua,c_aqua,c_blue,c_blue,1);
	
}else{
	draw_set_font(f_upgradeNames);
	draw_text_color(x,y-100,name,c_white,c_white,c_white,c_white,1);
}
