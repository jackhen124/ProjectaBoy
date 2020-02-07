for(var i = 0; i < argument0; i++){
	randomize();
	var rand = irandom_range(0,ds_list_size(o_levelMaker.peList)-1);
	var selection = ds_list_find_value(o_levelMaker.peList,rand);
	show_debug_message("peList Size: " + string(ds_list_size(o_levelMaker.peList)));
	show_debug_message("selection: " + string(rand));
	instance_create_layer(selection.x,selection.y,"enemies",argument1);
	ds_list_delete(o_levelMaker.peList,rand);
}