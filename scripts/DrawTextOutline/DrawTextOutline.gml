// @arg x
// @arg y
// @arg width
// @arg text
// @arg textColor
// @arg outlineColor
_draw_x = argument0;
_draw_y = argument1;
_width = argument2;
_string = argument3;

draw_set_colour(argument4);

draw_text(_draw_x-_width,_draw_y-_width,_string);
draw_text(_draw_x       ,_draw_y-_width,_string);
draw_text(_draw_x+_width,_draw_y-_width,_string);

draw_text(_draw_x-_width,_draw_y       ,_string);
draw_text(_draw_x       ,_draw_y       ,_string);
draw_text(_draw_x+_width,_draw_y       ,_string);

draw_text(_draw_x-_width,_draw_y+_width,_string);
draw_text(_draw_x       ,_draw_y+_width,_string);
draw_text(_draw_x+_width,_draw_y+_width,_string);

draw_set_colour(argument5);
draw_text(_draw_x       ,_draw_y       ,_string);