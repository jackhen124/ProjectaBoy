with(other){
		flash = 2;
		var isCrit = irandom_range(1,100) <= global.critChance;
		var damage = global.projectileDamage;
		if(isCrit)damage*=global.critDamage;
		hp-= damage;
		knockback = global.projectileBaseKnockback * global.hitStunStat;
		if(isCrit&&global.heavyCrits)knockback*=2;
		hitDir = other.direction;
		var di=instance_create_layer(x,y,"damageIndicators",o_damageIndicator);
		with(di){
			if(isCrit)crit=true;
			text=damage;
		}
	}