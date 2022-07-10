///@desc animate_sprite()
function animate_sprite(){
	
	//animation
	if(!is_grounded()) {
		if(sign(vSpd) < 0) {
			set_sprite(spriteJump, 0, 1);
			if(sprite_index == spriteJump) && (image_index == 2) {
				image_speed = 0;
			}//end if
		}//end if
		else {
			set_sprite(spriteFall, 0, 1);
		}//end else
	}//end if
	else {
		if(hSpd != 0) {
			set_sprite(spriteRun, 0, 1);
		}//end if
		else {
			set_sprite(spriteIdle, 0, 1);
		}//end else
	}//end else

}//end script