/// @description Insert description here
// You can write your code in this editor
xMargin = 80;
yPos = display_get_gui_height()-70;
yPos2 = display_get_gui_height()-90;
draw_healthbar(30,yPos,display_get_gui_width()-xMargin,yPos2,(hp/maxHp)*100,c_black,c_maroon,c_orange,0,1,0);