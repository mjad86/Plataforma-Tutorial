/// @description assign button variables

input_tick(true);
input_source_mode_set(INPUT_SOURCE_MODE.HOTSWAP);

if(global.playerHasControl) {
		global.keyLeft = input_check("left");
		global.keyRight = input_check("right");
		global.keyUp = input_check("up");
		global.keyDown = input_check("down");
		global.keyJump = input_check_pressed("jump");
		global.keyAttack = input_check_pressed("attack");
		global.keyRoll = input_check_pressed("roll");
		global.keyPause = input_check_pressed("pause");
}//end if
