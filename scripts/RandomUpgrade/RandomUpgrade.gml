
numReg = 6;
numRare = 3;

regProb = 3;
rareProb = 2;

randomize();

//isRare = irandom_range(1,regProb+rareProb) > rareProb;

isRare = irandom_range(1,regProb*numReg+rareProb*numRare)>numReg*regProb
done=false;
if(isRare){
	rand = irandom_range(1,numRare);
	switch(rand){
		case 1:
			var n = "Picky";
			with(o_upgradeButton){
				if(name==n || global.picky){
					RandomUpgrade(argument0);
					exit;
					//other.done=true;
				}
			}
			//if(done)break;
			CreateUpgradeButton(argument0,s_pickyUpgrade,n,UpgradePicky,"Gain an additional upgrade choice in the future","Fire-rate: ++","Damage: +","");
			break;
		case 2:
			var n = "Hot Shot";
			with(o_upgradeButton){
				if(name==n || global.hotShot){
					RandomUpgrade(argument0);
					exit;
					//other.done=true;
				}
			}
			//if(done)break;
			CreateUpgradeButton(argument0,s_extraSpicyUpgrade,n,UpgradeHotShot,"Pierce-Chance: +10%","Shots gain 20% range and damage after piercing","","");
			break;
		case 3:
			var n = "Boomerang";
			with(o_upgradeButton){
				if(name==n || global.boomerang){
					RandomUpgrade(argument0);
					exit;
					//other.done=true;
				}
			}
			//if(done)break;
			CreateUpgradeButton(argument0,s_boomerangUpgrade,n,UpgradeBoomerang,"Shots return to you upon reaching the end of their range","Range: ++","","");
			break;
	}
	
}else{
	rand = irandom_range(1,numReg);
	switch(rand){
		case 1:
			var n = "Laser Shot";
			with(o_upgradeButton){
				if(name==n){
					RandomUpgrade(argument0);
					exit;
					//other.done=true;
				}
			}
			//if(done)break;
			CreateUpgradeButton(argument0,s_laserUpgrade,n,UpgradeLaserShot,"Fire-rate: ++","Shot Speed: ++","","");
			break;
		case 2:
			var n = "Piercer";
			with(o_upgradeButton){
				if(name==n){
					RandomUpgrade(argument0);
					exit;
					
				}
			}
			
			CreateUpgradeButton(argument0,s_genericUpgrade,n,UpgradePiercer,"Damage: ++","Chance to pierce enemy: +10%","","");
			break;
		case 3:
			var n = "Skillful";
			with(o_upgradeButton){
				if(name==n){
					RandomUpgrade(argument0);
					exit;
				}
			}
			
			CreateUpgradeButton(argument0,s_genericUpgrade,n,UpgradeSkillful, "Pierce chance: +10%","Pierce damage: +20%","","");
			break;
		case 4:
			var n = "Hitstreak";
			with(o_upgradeButton){
				if(name==n){
					RandomUpgrade(argument0);
					exit;
				}
			}
			
			CreateUpgradeButton(argument0,s_hitstreakUpgrade, n,UpgradeHitstreak, "Consecutive hits increase damage by 8% each","Resets upon missing and Stacks up to 10 times","Damage: ++","");
			break;
		case 5:
			var n = "Sniper";
			with(o_upgradeButton){
				if(name==n){
					RandomUpgrade(argument0);
					exit;
				}
			}
			
			CreateUpgradeButton(argument0,s_sniperUpgrade,n,UpgradeSniper, "Range: +++","Damage: +","Shot Speed: +","Firerate: --");
			break;
		case 6:
			var n = "Close Combat";
			with(o_upgradeButton){
				if(name==n){
					RandomUpgrade(argument0);
					exit;
				}
			}
			
			CreateUpgradeButton(argument0,s_closeCombatUpgrade,n,UpgradeCloseCombat, "Deal up to +100% Damage from close range","Damage: +","Fire-rate: +","Range: -");
			break;
	}
}