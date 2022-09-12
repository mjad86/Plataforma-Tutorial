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
	
	//drawing regular text without dialogue branches
    var _scribbleMsg = scribble(msg);    
    _scribbleMsg.wrap(textWrapWidth, textboxHeight);
    _scribbleMsg.align(fa_center, fa_top);
    _scribbleMsg.starting_format("f_text", c_black);
    _scribbleMsg.draw((x1 + x2) * 0.5, y1 + 8, typist);
    
    // Check that the typist is done fading in and get options for dialogue branch
    if(responses[0] != -1) && (typist.get_state() == 1) {
        var _msg = "";
        for(var _i = 0; _i < array_length(responses); _i++) {
            _msg += "\n";
            if(_i == responseSelected) {
            _msg += "> ";
            }//end if
            _msg += responses[_i];
        }//end for
        var _scribbleNewMsg = scribble(_msg);
        _scribbleNewMsg.wrap(textWrapWidth, textboxHeight);
        _scribbleNewMsg.align(fa_center, fa_top);
        _scribbleNewMsg.starting_format("f_text", c_black);
        _scribbleNewMsg.draw((x1 + x2) * 0.5, y1 + 8);
    }//end if
} //end if