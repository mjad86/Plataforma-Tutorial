//@desc set_sprite(sprite_index, image_index, image_speed)
//@arg sprite_index
//@arg image_index
//@arg image_speed
function set_sprite(_spriteIndex, _imageIndex, _imageSpeed) {

	if(sprite_index != _spriteIndex) {
		image_index = _imageIndex; // set index to first
		image_speed = _imageSpeed; //set speed
		sprite_index = _spriteIndex; //set sprite
	}//end if

}//end scripts