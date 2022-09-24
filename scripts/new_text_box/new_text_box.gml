///@desc new_text_box()
///@arg message
///@arg background
///@arg [responses]
function new_text_box(){

	var _obj;
	
	if(instance_exists(o_text)) {
		_obj = o_text_queue; //if theres a text queued we asign it to the variable
	}//end if
	else {
		_obj = o_text;//if no text queued then we asign the regular o_text object
	}//end else
	
	with(instance_create_layer(0, 0, "player", _obj)) {
		msg = argument[0];

		if(instance_exists(other)) {
			originInstance = other.id;
		}//end if
		else {
			originInstance = noone;
		}//end else
		
		if(argument_count > 1) {
			//manages background setting
			background = argument[1];
		}//end if
		else {
			background = 0;
		}//end else		
		
		if(argument_count > 2) {
			//trim markers for responses
			responses = argument[2];
			for(var _i = 0; _i < array_length(responses); _i++) {				
				var _markerPos = string_pos(":", responses[_i]);
				responseScript[_i] = string_copy(responses[_i], 1, _markerPos-1);
				responseScript[_i] = real(responseScript[_i]);
				responses[_i] = string_delete(responses[_i], 1, _markerPos);
			}//end for
		}//end if
		else {
			responses = [-1];
			responseScript = [-1];
		}//end else
	}//end with
	
	if(instance_exists(o_player)) {
		with(o_player) {
			if(state != player_state_lock) {
				lastState = state; //save player previous state
				state = player_state_lock; //lock player in place
			}//end if
		}//end with
	}//end if

}//end script