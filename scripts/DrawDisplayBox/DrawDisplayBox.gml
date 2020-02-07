// @param borderWidth
// @param x1
// @param y1
// @param x2
// @param y2
var b = argument0;
draw_set_color(c_black);
draw_rectangle(argument1,argument2,argument3,argument4,0);
draw_set_color(c_dkgray);
draw_rectangle(argument1+b,argument2+b,argument3-b,argument4-b,0);