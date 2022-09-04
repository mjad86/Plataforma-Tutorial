//draw text
draw_sprite_stretched(s_textbox, 
					  background,
					  x1, 
					  y1,
					  textboxWidth, 
					  textboxHeight);
					  
//draw_set_font(f_text);//old
//draw_set_halign(fa_center);
//draw_set_valign(fa_top);
//draw_set_color(c_black);

if(x1 < TILE_SIZE) {
	//draws text after textbox is displayed
	//var _print = string_copy(msg, 1, textProgress);
	//draw_text((x1 + x2) * 0.5, y1 + 8, _print); //text shadow
	//draw_set_color(c_white);
	//draw_text((x1 + x2) * 0.5, y1 + 7, _print);//text
	var _scribbleObj = scribble(msg);
	
	if(responses[0] != -1) && (textProgress >=  string_length(msg)) {
		for(var _i = 0; _i < array_length(responses); _i++) {
			msg += "\n";
			if(_i == responseSelected) {
				msg += "> ";
			}//end if
			msg += responses[_i];
		}//end for
	}//end if
	
	
	_scribbleObj.wrap(textWrapWidth, textboxHeight);
	_scribbleObj.align(fa_center, fa_top);
	_scribbleObj.starting_format("f_text", c_black);
	_scribbleObj.draw((x1 + x2) * 0.5, y1 + 8, typist);
}//end if
