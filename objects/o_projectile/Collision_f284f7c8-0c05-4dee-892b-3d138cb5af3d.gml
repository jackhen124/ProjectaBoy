/// @description Insert description here
// You can write your code in this editor


if(ds_list_find_index(pierceList,other.id)==-1){
	with(other){
		
		flash = 2;
		//var isCrit = irandom_range(1,100) <= global.pierceChance;
		
		var damage = global.projectileDamage + .08*o_player.currentHitStreak*global.projectileDamage*global.hitStreakStat;
		//if(isCrit){
			//damage*=global.pierceDamage;
			//o_player.extraSpicy+=120;
		//}
		var cc = 0;
		if(!other.returning){
			c = ((global.baseProjectileRange*.8)) - point_distance(other.startX,other.startY,other.x,other.y);
			
			cc = (c/(global.baseProjectileRange*.8));
			
			if(cc>0) damage*= 1+(global.closeCombat*cc);
		}
		var pierced = irandom_range(1,100) <= global.pierceChance;
		if(pierced){
			damage*=global.pierceDamage;
			if(global.hotShot){
				other.hotShotStreak++;
			}
			
		}
		damage+=global.projectileDamage*.2;
		hp-= damage;
		knockback = (global.baseProjectileKnockback/* * global.hitStunStat*/) / knockbackResistance;
		//if(isCrit&&global.heavyCrits)knockback*=2;
		hitDir = other.direction;
		
		
		if(pierced){
			ds_list_add(other.pierceList,id);
			
		}
		var di=instance_create_layer(x,y,"damageIndicators",o_damageIndicator);
		with(di){
			if(pierced)crit=true;
			text=round(damage);
		}
		if(o_player.currentHitStreak < 10){
			o_player.currentHitStreak++;
		}
		
		
	}
	
}
if(ds_list_find_index(pierceList,other.id)==-1){
	
	instance_destroy();
}