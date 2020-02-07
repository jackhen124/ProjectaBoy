/// @description Insert description here
// You can write your code in this editor
/*
startWait = 0;

recoil = 0;
shooting = false;
firingDelay = 0;


maxShots = global.clipSize//round(global.clipSize / (global.shotgunMod + 1)) + global.shotgunMod;
shotsLeft = maxShots;
reloadTime = 70 * (1 + global.shotgunMod);
reloadTimeCounter = 0;

specialFired = false;


//maxSpecialAvailable = global.extraSpecial + 1;
//global.specialAvailable = maxSpecialAvailable;

rocketTime = 40;
rocketTimer = 40;
rocketFiring = false;
rocketsFired = 0;

flameTime = 7;
flameTimer = 7;
flaming = false;
flamesFlamed = 0;

enum GUNSTATE{
	FULL,
	ACTIVE,
	RELOADING
}

GUNSTATE = GUNSTATE.FULL;

