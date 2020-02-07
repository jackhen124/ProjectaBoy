


var _grid = argument0;



var _top_right = _grid[# (bbox_right-1) div CELL_WIDTH, bbox_top div CELL_HEIGHT] == VOID;

var _top_left = _grid[# bbox_left div CELL_WIDTH, bbox_top div CELL_HEIGHT] == VOID;

var _bottom_right = _grid[# (bbox_right-1) div CELL_WIDTH, (bbox_bottom-1) div CELL_HEIGHT] == VOID;

var _bottom_left = _grid[# bbox_left div CELL_WIDTH, (bbox_bottom-1) div CELL_HEIGHT] == VOID;





return _top_right || _top_left || _bottom_right || _bottom_left;