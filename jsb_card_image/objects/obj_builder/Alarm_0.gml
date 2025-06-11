/// @description Insert description here
// You can write your code in this editor


var _ccode = "ITSMEMPMAKER13427769SCXDRAFT8800";

var _output = "";
var ind = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
/*
for(var i = 0; i < 54; i++) {
	_output += string(string_pos(string_char_at(_ccode, i + 1), ind))
}

show_debug_message(_output)
*/



surf = surface_create(192, 222)

for (var i = 0; i < 2000; i++) {
	if global.ispr_o[i] = 1 {
		surface_set_target(surf)
		draw_clear_alpha(0,0)
		draw_sprite(global.ispr_s[i], global.ispr_i[i],0,0)
		surface_reset_target()
        var _col = surface_getpixel_ext(surf, 96, 111);
        var _alpha = (_col >> 24) & 255;
        if _alpha > 50 {
            surface_save(surf, "card" + string(i) + ".png")
            show_debug_message(i)
        } else {
            show_debug_message("skip")
        }
		
		
	}
}


surface_resize(surf, 150, 500)


for (var i = 0; i < sprite_get_number(spr_master); i++) {
	surface_set_target(surf)
	draw_clear_alpha(0,0)
	draw_sprite(spr_master, i, 0,0)
	surface_reset_target()
	surface_save(surf, "char" + string(i) + ".png")
	show_debug_message(i)
}

surface_free(surf)


show_debug_message("Done!")