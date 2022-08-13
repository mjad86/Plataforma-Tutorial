//Calculate Movement
movement = (global.keyRight - global.keyLeft);

//execute state machine
if(!global.gamePaused) {
	script_execute(state);
}//end if

depth = -bbox_bottom;