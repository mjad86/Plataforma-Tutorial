/// @description assign button variables

if(global.playerHasControl) {
		global.keyLeft = input_check("left");
		global.keyRight = input_check("right");
		global.keyJump = input_check_pressed("jump");
		global.keyAttack = input_check_pressed("attack");
		global.keyRoll = input_check_pressed("roll");
		global.keyPause = input_check_pressed("pause");
}//end if
