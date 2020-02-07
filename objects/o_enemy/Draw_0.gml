/// @description Insert description here
// You can write your code in this editor

draw_self();

if(flash > 0 && destroyed == false){
	flash--;
	shader_set(shader0);
	draw_self();
	shader_reset();
}

//draw_set_font(f_damageIndicator);
//draw_text(x,y,"xMove "+string(xMove));
//draw_text(x,y+20,"yMove "+string(yMove));
