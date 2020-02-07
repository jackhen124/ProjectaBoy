instance_destroy(o_choiceScreen);
instance_destroy(o_upgradeScreen);
instance_create_layer(x,y,layer,o_extraUpgradeScreen);
o_cursor.choice=false;
o_cursor.secondUpgrade=true;

global.hp-=2;
	
