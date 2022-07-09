///player_collision()
function player_collision() {
	
	var _collided = false;
	
	//Vertical Collision
	repeat(abs(vSpd)) {
	    if(!place_meeting(x, y + sign(vSpd), o_parent_col)) {
		     //Apply movement
			 y += sign(vSpd); 
		}//end if
	    else {
	        vSpd = 0;
			_collided = true;
	        break;
	    }//end else
	}//end repeat

	//Horizontal Collision
	repeat(abs(hSpd)) {
		//Move up slope
	    if(place_meeting(x + sign(hSpd), y, o_parent_col) && !place_meeting(x + sign(hSpd), y - 1, o_parent_col)) {
			--y;
		}//end if
	
	    //Move down slope
	    if(!place_meeting(x + sign(hSpd), y, o_parent_col) && !place_meeting(x + sign(hSpd), y + 1, o_parent_col) && place_meeting(x + sign(hSpd), y + 2, o_parent_col)) {
	        ++y; 
		}//end if

	    if(!place_meeting(x + sign(hSpd), y, o_parent_col)) {
	        //Apply movement
			x += sign(hSpd); 
		}//end if
	    else {
	        hSpd = 0;
			_collided = true;
	        break;
	    }//end else
	}//end repeat

	return _collided;

}//end script