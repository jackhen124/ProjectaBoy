/// @description Insert description here
// You can write your code in this editor

draw_set_font(f_stageCleared);
xDraw = display_get_gui_width()/2;
yDraw = display_get_gui_height()/2.5;
rot++;
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_sprite_ext( s_stageClearedSpinner, 0, xDraw, yDraw, 22, 22, rot, c_white, .6 );


//border, text
//DrawTextOutline(xDraw,yDraw,4,text,c_yellow,c_olive);
DrawTextOutline(xDraw,yDraw,4,text,c_olive,c_yellow);