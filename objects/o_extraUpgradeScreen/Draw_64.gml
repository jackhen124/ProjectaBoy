/// @description Insert description here
// You can write your code in this editor

DrawHearts();
DrawContinues();
draw_set_halign(fa_center);
var vSpacing = 40;
draw_set_font(f_upgradeDesc);
xS = display_get_gui_width()/2;
yS = display_get_gui_height()/3;
draw_set_color(c_white);
draw_text(xS,yS,text1);
draw_text(xS,yS+vSpacing,text2);
draw_text(xS,yS+vSpacing*2,text3);
draw_text(xS,yS+vSpacing*3,text4);




