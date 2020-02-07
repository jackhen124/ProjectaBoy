// @arg x
var by;
if(instance_exists(o_upgradeScreen)){
	by = o_upgradeScreen.upgradeButtonY;
}else{
	by = o_extraUpgradeScreen.upgradeButtonY;
}

var upgrade = instance_create_layer(argument[0],by,"upgradeButtons",o_upgradeButton);
with(upgrade){
	sprite=argument[1];
	name = argument[2];
	script=argument[3];
	text1 = argument[4];
	if(argument_count>4){
		text2=argument[5];
	}
	if(argument_count>5){
		text3=argument[6];
	}
	if(argument_count>6){
		text4=argument[7];
	}
	
}
