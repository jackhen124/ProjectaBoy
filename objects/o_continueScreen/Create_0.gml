/// @description Insert description here
// You can write your code in this editor
thirdW = display_get_gui_width()/3;
buttonY = display_get_gui_height()-display_get_gui_height()/5;
nb = instance_create_layer(thirdW,buttonY,"continueButtons",o_noButton);
with(nb){
	script=NoContinue;
}
yb = instance_create_layer(thirdW*2,buttonY,"continueButtons",o_yesButton);
with(yb){
	script=YesContinue;
}
instance_create_layer(display_get_gui_width()/2,buttonY,"aimIndicator",o_cursor);

//instance_create_layer(
skullAlpha = .1;