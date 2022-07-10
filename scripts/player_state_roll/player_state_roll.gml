///@desc player_state_roll()
function player_state_roll(){

	hSpd = image_xscale * rollSpd;
	
	//apply gravity
	if(vSpd <= 10) {
		vSpd = vSpd + grv;
	}//end script
	
	moveDistanceRemaining = max(0, moveDistanceRemaining - rollSpd);
	
	var _collided = player_collision();
	
	set_sprite(spriteRoll, 0 + min(((1 - (moveDistanceRemaining / distanceRoll)) * (sprite_get_number(sprite_index))), sprite_get_number(sprite_index) - 1), 1);

	if(moveDistanceRemaining <= 0) {
		state = player_state_free;
	}//end if

}//end script