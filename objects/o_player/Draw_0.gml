if(is_grounded()) {
	draw_sprite(s_player_shadow, 0, floor(x), floor(y)); //drawing shadow if on ground
}//end if

draw_self();

/*
//NOTE: ONLY UNCOMENT TO DEBUG DETECTION RECTANGLE FOR ENTITY
var _activateX = (x + (30 * image_xscale));
var _activateY = y - 30;

draw_rectangle(x, y, _activateX, _activateY, true);
*/