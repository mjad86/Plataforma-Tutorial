///@desc player_state_free()
function player_state_free(){

	hSpd = movement * moveSpd;

	//apply gravity
	if(vSpd <= 10) {
		vSpd = vSpd + grv;
	}//end script

	if(is_grounded()) && (keyJump) {
		//apply jump height
		vSpd = jumpHeight;
	}//end if

	//check collision and apply movement.
	player_collision();
	
	//do aniamtion and set sprite
	animate_sprite();
	
	if(hSpd != 0) {
		image_xscale = sign(hSpd); //set xscale aka facing
	}//end if
	
	//Change State
	if(is_grounded()) && (keyRoll) {
		state = player_state_roll;
		moveDistanceRemaining = distanceRoll;
	}//end if

}//end script