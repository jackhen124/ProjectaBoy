/// @description Insert description here
// You can write your code in this editor
event_inherited();

 
enum slimeState {
	idle,
	jumping,
	jumpingUp,
	jumpingDown,
	landing,
	waiting
}

state = slimeState.idle;

jumpTimer = 0;
jumpTime = 40;

jumpSpeed = 1.8;

shotReady = true;

baseWait = 30;
randWait = 40;
randomize();
image_index = irandom_range(0,1);
waitTime = baseWait + irandom(randWait);
waitTimer = 0;

text = "";



