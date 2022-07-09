///@desc is_grounded()
function is_grounded(){
	
	var _grounded;
	
	_grounded = place_meeting(x , y + 1, o_parent_col);
	
	return _grounded;
}
