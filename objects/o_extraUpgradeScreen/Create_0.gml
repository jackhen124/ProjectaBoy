/// @description Insert description here
// You can write your code in this editor


startingText = "Choose another upgrade";
text1 = startingText;
text2 = "";
text3 = "";
text4 = "";

upgradeButtonY = display_get_gui_height()-display_get_gui_height()/5;
if(!global.picky){
	startX = display_get_gui_width()/4.5;
	xInc = display_get_gui_width()/5.5;
}else{
	//picky
	startX = display_get_gui_width()/7.2;
	xInc = display_get_gui_width()/5.5;
}
startX-=xInc*.5;

//CreateUpgradeButton(startX,s_healthRestoreUpgrade,"Health Restore",UpgradeRestoreHealth,"Restore 3 health","","","");

done=false;
RandomUpgrade(startX+xInc);
done=false;
RandomUpgrade(startX+xInc*2);
done=false;
RandomUpgrade(startX+xInc*3);
if(global.picky){
	done=false;
	RandomUpgrade(startX+xInc*4);
}


