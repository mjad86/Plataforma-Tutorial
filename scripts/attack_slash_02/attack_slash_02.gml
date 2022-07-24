///@desc attack_slahs_02
function attack_slash_02() {

	set_sprite(spriteAttack02, 0, 1);//set sprite
	
	//trigger combo
	if(is_grounded()) && (keyActtack) && (image_index > 3) {
		state = player_state_attack;
		stateAttack = attack_slash_03;
	}//end if
	
	if(animation_end()) {
		//return to free state
		state = player_state_free;
	}//end if

}//end script