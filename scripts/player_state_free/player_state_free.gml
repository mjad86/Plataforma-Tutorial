///@desc player_state_free()
function player_state_free() {

	hSpd = movement * moveSpd;

	//apply gravity
	if(vSpd <= 10) {
		vSpd = vSpd + grv;
	}//end script

	if(is_grounded()) && (keyJump) {
		//apply jump height
		vSpd = jumpHeight;
	}//end if

	//check collision and apply movement.
	player_collision();
	
	//do aniamtion and set sprite
	animate_sprite();
	
	if(hSpd != 0) {
		image_xscale = sign(hSpd); //set xscale aka facing
	}//end if
	
	//Change State triggers
	if(is_grounded()) {
		if(keyRoll) {
			//Logic for activating entities
			//1. Check first if any entity exists within range of activation
			//2. if theres nothing in range or ahs no script to activate - we roll
			//3. if none of the above, we activate the entity
			//4. if the entity is another humanoid, face towards player		
		
			var _activateX = (x + (30 * image_xscale));
			var _activateY = y - 30;
			activate = instance_position(_activateX, _activateY, o_parent_entity);

			if(activate == noone || activate.entityActivateScript == -1) {
				//Roll logic
				state = player_state_roll;
				moveDistanceRemaining = distanceRoll;
			}//end if
			else {
				//activate the entity script with or without arguments
				execute_array(activate.entityActivateScript, activate.entityActivateScriptArg);
		
				//make an npc face player
				if(activate.entityNpc) {
					with(activate) {
						image_xscale = other.image_xscale * -1;
					}//end with
				}//end if
		
			}//end else
		}//end if
	
		if(keyActtack) {
			//attack key logic
			state = player_state_attack;
			stateAttack = attack_slash_01;
		}//end if
	}//end if
	
}//end script