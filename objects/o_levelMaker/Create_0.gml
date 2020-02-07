/// @description Insert description here
// You can write your code in this editor
randomize();

timer = 0;
stageClearedDone=false;
// Create the surface for the shadows
peList = ds_list_create();





// Get the tile layer map id

var _wall_map_id = layer_tilemap_get_id("wallTiles");



// Set up the grid

width_ = room_width div CELL_HEIGHT;

height_ = room_height div CELL_HEIGHT;

grid_ = ds_grid_create(width_, height_);

ds_grid_set_region(grid_, 0, 0, width_ - 1, height_ - 1, VOID);



// Create the controller

var _controller_x = width_ div 2;

var _controller_y = height_ div 2;

var _controller_direction = irandom(3);

var _steps = 600;



var _player_start_x = _controller_x * CELL_WIDTH + CELL_WIDTH/2;

var _player_start_y = _controller_y * CELL_HEIGHT + CELL_HEIGHT/2;

instance_create_layer(_player_start_x, _player_start_y, "player", o_player);



// Choose the direction change odds

var _direction_change_odds = 1;



// Generate the level

repeat (_steps) {

	grid_[# _controller_x, _controller_y] = FLOOR;

	

	// Rnadomize the direction

	if (irandom(_direction_change_odds) == _direction_change_odds) {

		_controller_direction = irandom(3);	

	}

	

	// Move the controller

	var _x_direction = lengthdir_x(1, _controller_direction * 90);

	var _y_direction = lengthdir_y(1, _controller_direction * 90);

	_controller_x += _x_direction;

	_controller_y += _y_direction;

	

	// Make sure we don't move outside the room

	if (_controller_x < 2 || _controller_x >= width_ - 2) {

		_controller_x += -_x_direction * 2;

	}

	if (_controller_y < 2 || _controller_y >= height_ - 2) {

		_controller_y += -_y_direction * 2;

	}

}



// Create the walls tiles

for (var _y = 1; _y < height_-1; _y++) {

	for (var _x = 1; _x < width_-1; _x++) {

		if (grid_[# _x, _y] != FLOOR) {

			var _north_tile = grid_[# _x, _y-1] == VOID;

			var _west_tile = grid_[# _x-1, _y] == VOID;

			var _east_tile = grid_[# _x+1, _y] == VOID;

			var _south_tile = grid_[# _x, _y+1] == VOID;

		

			var _tile_index = NORTH*_north_tile + WEST*_west_tile + EAST*_east_tile + SOUTH*_south_tile + 1;

			if (_tile_index == 1) {

				grid_[# _x, _y] = FLOOR	

			}

		}

	}

}



// Create the walls tiles

for (var _y = 1; _y < height_-1; _y++) {

	for (var _x = 1; _x < width_-1; _x++) {

		if (grid_[# _x, _y] != FLOOR) {

			var _north_tile = grid_[# _x, _y-1] == VOID;

			var _west_tile = grid_[# _x-1, _y] == VOID;

			var _east_tile = grid_[# _x+1, _y] == VOID;

			var _south_tile = grid_[# _x, _y+1] == VOID;

		
			var _tile_index = NORTH*_north_tile + WEST*_west_tile + EAST*_east_tile + SOUTH*_south_tile + 1;

			tilemap_set(_wall_map_id, _tile_index, _x, _y);
			
			xLoc = CELL_WIDTH*_x +CELL_WIDTH;	
			yLoc = CELL_HEIGHT*_y +CELL_HEIGHT;
			
			instance_create_layer(xLoc,yLoc,"level",o_wallCollision);
			
		}

	}

}

//spawn enemies
for (var _y = 1; _y < height_-1; _y++) {

	for (var _x = 1; _x < width_-1; _x++) {

		if (grid_[# _x, _y] == FLOOR) {
			
			xLoc = CELL_WIDTH*_x +CELL_WIDTH/2;	
			yLoc = CELL_HEIGHT*_y +CELL_HEIGHT/2;
			if(point_distance(xLoc,yLoc,o_player.x,o_player.y) > 200){
				var pe = instance_create_layer(xLoc,yLoc,"enemies",o_potentialEnemy);
				ds_list_add(peList, pe);
			}
			
		}
	}
}
//enemy1 = noone;
//enemy2 = noone;
//enemy3 = noone;
num1 = 0;
num2 = 0;
num3 = 0;
if(global.areaNumber == 1){
	enemy1 = o_greenSlime;
	enemy2 = o_yellowSlime;
	enemy3 = o_bigPurpleSlime;
	if(global.levelNumber==1){
		num1 = irandom_range(7,10);
		num2 = irandom_range(4,7);
		num3 = irandom_range(1,2);//1,2
	}else if(global.levelNumber==2){
		num1 = irandom_range(7,12);
		num2 = irandom_range(5,8);
		num3 = irandom_range(2,4);
		
	}else if(global.levelNumber==3){
		num1 = irandom_range(7,13);
		num2 = irandom_range(5,9);
		num3 = irandom_range(3,5);
	}
}

SpawnEnemies(num1,enemy1);
SpawnEnemies(num2,enemy2);
SpawnEnemies(num3,enemy3);

