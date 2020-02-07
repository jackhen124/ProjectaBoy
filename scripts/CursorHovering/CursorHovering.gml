
//var mouseX = device_mouse_x_to_gui(0);
//var mouseY = device_mouse_y_to_gui(0);
if(o_cursor.x >= bbox_left && o_cursor.y >= bbox_top && o_cursor.x < bbox_right && o_cursor.y < bbox_bottom){
	return true;
}else{
	return false;
}
//return point_in_rectangle(mouseX,mouseY,bbox_right,bbox_top,bbox_right,bbox_bottom);