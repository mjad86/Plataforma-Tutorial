//Player input
keyLeft = keyboard_check(vk_left);
keyRight = keyboard_check(vk_right);
keyJump = keyboard_check_pressed(vk_space);
keyRoll = keyboard_check_pressed(vk_control);

//Calculate Movement
movement = (keyRight - keyLeft);

//execute state machine
script_execute(state);