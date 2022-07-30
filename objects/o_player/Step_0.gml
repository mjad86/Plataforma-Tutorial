//Player input
keyLeft = keyboard_check(vk_left);
keyRight = keyboard_check(vk_right);
keyJump = keyboard_check_pressed(vk_space);
keyRoll = keyboard_check_pressed(vk_control);
keyActtack = keyboard_check_pressed(ord("C"));

//Calculate Movement
movement = (keyRight - keyLeft);

//execute state machine
if(!global.gamePaused) {
	script_execute(state);
}//end if

depth = -bbox_bottom;
