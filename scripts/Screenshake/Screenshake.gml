/// @desc Screenshake(magnitude, frames)
/// @arg magnitude
/// @arg length in frames

with(o_camera){
	if(argument0 > shake_remain){
		shake_magnitude = argument0;
		shake_remain = argument0;
		shake_length = argument1;
	}
	
}