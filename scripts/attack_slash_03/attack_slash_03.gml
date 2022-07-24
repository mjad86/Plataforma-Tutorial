///@desc attack_slahs_03
function attack_slash_03() {

	set_sprite(spriteAttack03, 0, 1);//set sprite
	
	if(animation_end()) {
		//return to free state
		state = player_state_free;
	}//end if

}//end script