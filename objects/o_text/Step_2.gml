lerpProgress += (1 - lerpProgress) / 50;

if(x1 < TILE_SIZE) {
	if(textProgress < string_length(msg)) {
		textProgress += global.textSpd; //starts writting after textbox is displayed
	}//end if
}//end if

x1 = lerp(x1, x1Target + (TILE_SIZE * 0.5), lerpProgress);
x2 = lerp(x2, x2Target, lerpProgress);

textboxWidth = lerp(textboxWidth, x2Target - TILE_SIZE, lerpProgress);

//cycle between responses
if(global.dialogueBuffer <= 0) && (responses[0] != -1) && (textProgress >= string_length(msg)){
	if(global.keyDown) || (global.keyUp) {
		//insert sfx here
		global.dialogueBuffer = global.buffer;
	}//end if
	responseSelected += (global.keyDown - global.keyUp);	
}//end if
else {
	global.dialogueBuffer = max(0, global.dialogueBuffer - 1);
}//end else

var _max = array_length(responses) - 1;
var _min = 0;
if(responseSelected > _max) {
	responseSelected = _min;
}//end if
if(responseSelected < _min) {
	responseSelected = _max;
}//end if

if(global.keyRoll) {
	var _msgLen = string_length(msg);
	if(textProgress >= _msgLen) {
		if(responses[0] != -1) {
			with(originInstance) {
				dialogue_responses(other.responseScript[other.responseSelected]);
			}//end with
		}//end if
		
		instance_destroy(); //destroy the textbox
		if(instance_exists(o_text_queue)) {
			with(o_text_queue) {
				ticket--;//reduce the queue line of textboxes by 1;
			}//end with
		}//end if
		else {
			if(instance_exists(o_player)) {
				with(o_player) {
					state = lastState; //free player again
				}//end with
			}//end if
		}//end else
	}//end if
	else {
		if(textProgress > 2) {
			textProgress = _msgLen;
			typist.in(textProgress, 0);
		}//end if
	}//end else
}//end if