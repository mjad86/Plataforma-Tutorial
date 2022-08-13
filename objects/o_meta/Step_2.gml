if(global.keyPause) {
	global.gamePaused = !global.gamePaused;
	
	if(global.gamePaused) {
		with(all) {
			gamePausedImageSpeed = image_speed;
			image_speed = 0;
		}//end with
	}//end if
	else {
		with(all) {
			image_speed = gamePausedImageSpeed;
		}//end with
	}//end else
	
}//end if