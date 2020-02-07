/// @description Insert description here
// You can write your code in this editor
var _x_input = 0;
var _y_input = 0;
if(global.gamePadControl){
	
	//x input
	if(abs(gamepad_axis_value(4, gp_axislh)) > 0.2){
		
		leftMove = abs(min(gamepad_axis_value(4, gp_axislh), 0));
		rightMove = max(gamepad_axis_value(4, gp_axislh), 0);
	
		if(leftMove > 0){
		_x_input = -leftMove;
		}else if(rightMove > 0){
		_x_input = rightMove;
		}
	}

	//y input
	if(abs(gamepad_axis_value(4, gp_axislv)) > 0.2){
		downMove = abs(min(gamepad_axis_value(4, gp_axislv), 0));
		upMove = max(gamepad_axis_value(4, gp_axislv), 0);
	
		if(downMove > 0){
			_y_input = -downMove;
		}else if(upMove > 0){
			_y_input = upMove;
		}
	}
	x += _x_input*cursorSpeed;
	y += _y_input*cursorSpeed;
}else{
	x = mouse_x;
	y = mouse_y;
}

if(!choice && !secondUpgrade){
	var nearest = instance_nearest(x,y,o_upgradeButton);
	if(place_meeting(x,y,nearest)){
		o_upgradeScreen.text1=nearest.text1;
		o_upgradeScreen.text2=nearest.text2;
		o_upgradeScreen.text3=nearest.text3;
		o_upgradeScreen.text4=nearest.text4;
		//if(global.gamePadControl){
			if(GamepadAnyButton() || mouse_check_button_pressed(mb_left)){
				script_execute(nearest.script);
				instance_create_layer(x,y,layer,o_choiceScreen);
				choice = true;
				y=display_get_gui_height()/2;
				
			
			}
		//}
	}else{
		o_upgradeScreen.text1=o_upgradeScreen.startingText;
		o_upgradeScreen.text2="";
		o_upgradeScreen.text3="";
		o_upgradeScreen.text4="";
	}
}else if(!secondUpgrade){
	var nearest = instance_nearest(x,y,o_choiceButton);
	if(place_meeting(x,y,nearest)){
		
		//if(global.gamePadControl){
		if(GamepadAnyButton() || mouse_check_button_pressed(mb_left)){
				if(nearest.script!=noone){
					script_execute(nearest.script);
					instance_destroy(o_noButton);
					
					instance_destroy(o_yesButton);
					y=display_get_gui_height()/2;
				}else{
					SlideTransition(TRANS_MODE.GOTO,nextRoom)
				}
				
				//instance_create_layer(x,y,"layer",o_choiceScreen);
				//choice = true;
				//y=display_get_gui_height()/2;
				//room_goto(r_1);
				//if(global.levelNumber == 4){
					//SlideTransition(TRANS_MODE.GOTO,r_boss);
				//}else{
					//SlideTransition(TRANS_MODE.GOTO,r_1);
				//}
			
		}
		//}
	}
}else{
	var nearest = instance_nearest(x,y,o_upgradeButton);
	if(place_meeting(x,y,nearest)){
		o_extraUpgradeScreen.text1=nearest.text1;
		o_extraUpgradeScreen.text2=nearest.text2;
		o_extraUpgradeScreen.text3=nearest.text3;
		o_extraUpgradeScreen.text4=nearest.text4;
		//if(global.gamePadControl){
			if(GamepadAnyButton() || mouse_check_button_pressed(mb_left)){
				script_execute(nearest.script);
				SlideTransition(TRANS_MODE.GOTO,nextRoom);
				
			
			}
		//}
	}else{
		o_extraUpgradeScreen.text1=o_extraUpgradeScreen.startingText;
		o_extraUpgradeScreen.text2="";
		o_extraUpgradeScreen.text3="";
		o_extraUpgradeScreen.text4="";
	}
}

