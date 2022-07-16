if(is_grounded()) {
	draw_sprite(s_player_shadow, 0, floor(x), floor(y)); //drawing shadow if on ground
}//end if

draw_self();
