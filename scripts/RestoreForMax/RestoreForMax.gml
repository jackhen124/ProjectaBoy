global.maxHp-=2;
if(global.hp>global.maxHp){
	global.hp=global.maxHp;	
}
global.hp--;
global.hpPerLevel++;
SlideTransition(TRANS_MODE.GOTO,nextRoom);