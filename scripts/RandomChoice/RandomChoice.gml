
var good = "";
script = noone;
var bad = "";
//badScript = noone;
//nextLevelHarder = false;
randomize();
rand = irandom_range(1,4);
if(rand==1){
	good = "Choose another upgrade";
	script = UpgradeForDoubleDamage;
	//nextLevelHarder = true;
	bad="Take double damage next level";
	
}else if(rand==2){
	if(global.hp==1){
		RandomChoice();
		exit;
	}
	good = "Gain 1 Max health";
	script = MaxForDamage;
	bad = "take 1 damage";
	
	
}else if(rand==3){
	if(global.hp<=1){
		RandomChoice();
		exit;
	}
	good = "Choose another upgrade";
	bad = "Take 2 damage";
	script = UpgradeForTakeDamage;
}else if(rand==4){
	if(global.hp<=1){
		RandomChoice();
		exit;
	}
	good = "Restore 1 extra health after clearing a level";
	bad = "Lose 2 max health and take 1 damage";
	script = RestoreForMax;
}

o_upgradeScreen.text2 = good;
o_upgradeScreen.text4 = bad;
o_yesButton.script = script;
