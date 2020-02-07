/// @description Insert description here
// You can write your code in this editor
x_speed_ = 0;

y_speed_ = 0;

max_speed_ = 2;
dodgeSpeed = 2.65;
base_maxSpeed = 2;

acceleration_ = .6;

shootTimer = 0;
firingDelay = 30;
extraSpicy = 0;

fireRate = global.fireRate;
shootAngle = 0;
invulnerable = 0;
invulnerableTime = 60;
blinkingTime = 5;
blinkingTimer = 0;
notBlinkingTime = 10;
notBlinkingTimer = 0;
text = "";
aiming = false;

currentHitStreak = 0;

enum playerState{
	normal,
	dodging, 
	landing
	//blocking,
	//failedBlock,
	//successfulBlock
}
state = playerState.normal;
dodgeTimer = 0;
dodgeTime = 33;
landTimer = 0;
landTime = 4;

blockSpeed = 0;
blinking = 0;

dead = false;
deadDone=false;

instance_create_layer(x,y,"damageIndicators",o_crown);
instance_create_layer(x,y,"aimIndicator",o_aimIndicator);
instance_create_layer(x, y, "player", o_camera);
//instance_create_layer(x,y,"aimIndicator",o_enemyIndicator);

