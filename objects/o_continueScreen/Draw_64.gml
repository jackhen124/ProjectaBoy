/// @description Insert description here
// You can write your code in this editor
draw_set_font(f_stageCleared);
xDraw = display_get_gui_width()/2;
yDraw = display_get_gui_height()/2.3;
skullX = display_get_gui_width()/2;
skullY = display_get_gui_height()/5;
draw_set_halign(fa_center);
draw_set_valign(fa_center);
if(skullAlpha <.85){
	skullAlpha+=.005;
}

draw_sprite_ext( s_skull, 0, skullX, skullY, 10, 8, 0, c_white, skullAlpha);


//border, text
//DrawTextOutline(xDraw,yDraw,4,text,c_yellow,c_olive);
text="Continue?"
DrawTextOutline(xDraw,yDraw,4,text,c_black,c_maroon);