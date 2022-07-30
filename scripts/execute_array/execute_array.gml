///@desc execute script with argument array
///@returns any
///@arg script
///@arg array[]
function execute_array(argument0, argument1){
	
	var _scr = argument0;
	var _args = argument1;
	
	switch(array_length(_args)) {
		case 1: 
			return script_execute(_scr, _args[0]);
		break;
		case 2: 
			return script_execute(_scr, _args[0], _args[1]);
		break;
		case 3: 
			return script_execute(_scr, _args[0], _args[1], _args[2]);
		break;
		case 4: 
			return script_execute(_scr, _args[0], _args[1], _args[2], _args[3]);
		break;
		case 5: 
			return script_execute(_scr, _args[0], _args[1], _args[2], _args[3], _args[4]);
		break;
		case 6: 
			return script_execute(_scr, _args[0], _args[1], _args[2], _args[3], _args[4], _args[5]);
		break;
		case 7: 
			return script_execute(_scr, _args[0], _args[1], _args[2], _args[3], _args[4], _args[5], _args[6]);
		break;
		case 8: 
			return script_execute(_scr, _args[0], _args[1], _args[2], _args[3], _args[4], _args[5], _args[6], _args[7]);
		break;
		default: show_error("execute_array: argument count not supported!", false);
	}//end switch
	
}//end script