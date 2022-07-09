//Player input
keyLeft = keyboard_check(vk_left);
keyRight = keyboard_check(vk_right);
keyJump = keyboard_check_pressed(vk_space);

//Calculate Movement
var _move = (keyRight - keyLeft);

hSpd = _move * moveSpd;

//apply gravity
vSpd = vSpd + grv;

if(is_grounded()) && (keyJump) {
	//apply jump height
	vSpd = jumpHeight;
}//end if

//check collision and apply movement.
player_collision();

//animation
if(!is_grounded()) {
	if(sign(vSpd) < 0) {
		set_sprite(s_player_jump, 0, 1);
		if(sprite_index == s_player_jump) && (image_index == 2) {
			image_speed = 0;
		}//end if
	}//end if
	else {
		set_sprite(s_player_fall, 0, 1);
	}//end else
}//end if
else {
	if(hSpd != 0) {
		set_sprite(s_player_run, 0, 1);
	}//end if
	else {
		set_sprite(s_player_idle, 0, 1);
	}//end else
}//end else

if(hSpd != 0) {
	image_xscale = sign(hSpd); //set xscale aka facing
}//end if