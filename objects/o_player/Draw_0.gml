/// @description Insert description here
// You can write your code in this editor
if(blinking > 0 && !dead){
	if(blinkingTimer < blinkingTime){
		blinkingTimer++;
		if(blinkingTimer >= blinkingTime){
			notBlinkingTimer = 0;
		}
	}else if(notBlinkingTimer < notBlinkingTime){
		notBlinkingTimer++;
		if(notBlinkingTimer >= notBlinkingTime){
			blinkingTimer = 0;
		}
		draw_self();
	}
}else{
	draw_self();
}

//draw_text(x,y,string(o_aimIndicator.x-x));
//draw_text()