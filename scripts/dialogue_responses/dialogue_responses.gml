///@desc dialogue_responses
///@arg response
function dialogue_responses(argument0){

	switch(argument0) {
		case 0:
			
		break;
		case 1:
			new_text_box("\nYou tried to destroy the barrel, but nothing happened", 0);		
		break;
		case 2:
			new_text_box("Will you try again?", 0, ["3:Yes!", "0:No."])
		break;
		case 3:
			new_text_box("\nYou tried but nothing happened...", 0);
		break;
		default:
		break;
	
	}//end switch

}//end script