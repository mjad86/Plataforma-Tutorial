///@desc attack_slahs_01
function attack_slash_01() {
	
	set_sprite(spriteAttack01, 0, 1);//set sprite
	
	//trigger combo
	if(is_grounded()) && (global.keyAttack) && (image_index > 3) {
		state = player_state_attack;
		stateAttack = attack_slash_02;
	}//end if
	
	if(animation_end()) {
		//return to free state
		state = player_state_free;
	}//end if

}//end script