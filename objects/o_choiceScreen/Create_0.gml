/// @description Insert description here
// You can write your code in this editor
while(instance_exists(o_upgradeButton)){
	instance_destroy(o_upgradeButton);
}
thirdW = display_get_gui_width()/3;
instance_create_layer(thirdW,o_upgradeScreen.upgradeButtonY,"upgradeButtons",o_noButton);

instance_create_layer(thirdW*2,o_upgradeScreen.upgradeButtonY,"upgradeButtons",o_yesButton);
o_upgradeScreen.text1 = "You are given a choice:";
o_upgradeScreen.text3 = "But";
RandomChoice();
