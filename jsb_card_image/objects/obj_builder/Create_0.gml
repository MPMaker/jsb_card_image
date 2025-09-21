
var taa = ["","",0,0,0,0,-1,0,0,-1,
0,-1,0,0,-1,-1,-1,0,0,-1
,0,0,0,0,0,-1,-1,-1,-1,-1,
-1,-1,-1,0,0,0];


global.ispr_s = array_create(2000,-1)
global.ispr_i = array_create(2000,0)
global.ispr_p = array_create(2000,2)
global.ispr_o = array_create(2000,0)

global.card_i_all = []
global.card_i_base = []

global.card_i_normal = []
global.card_i_token = []
global.card_i_ext = []
global.card_i_hero = []
global.card_i_rare = []
global.card_i_raid = []

global.card_i_unit = []
global.card_i_magic = []
global.card_i_trap = []

global.card_i_kind = array_create(10, [])

for (i = 0; i < sprite_get_number(spr_card_basic); ++i) {
	global.ispr_s[i] = spr_card_basic
	global.ispr_i[i] = i
	global.ispr_o[i] = 1
}

for (i = 100; i < 100 + sprite_get_number(spr_card_basic1); ++i) {
	global.ispr_s[i] = spr_card_basic1
	global.ispr_i[i] = i - 100
	global.ispr_o[i] = 1
}

for (i = 200; i < 200 + sprite_get_number(spr_card_basic2); ++i) {
	global.ispr_s[i] = spr_card_basic2
	global.ispr_i[i] = i - 200
	global.ispr_o[i] = 1
}

for (i = 300; i < 300 + sprite_get_number(spr_card_basic3); ++i) {
	global.ispr_s[i] = spr_card_basic3
	global.ispr_i[i] = i - 300
	global.ispr_o[i] = 1
}



for (i = 1000; i < 1000 + sprite_get_number(spr_card_extra); ++i) {
	global.ispr_s[i] = spr_card_extra
	global.ispr_i[i] = i - 1000
	global.ispr_o[i] = 1
}

for (i = 1100; i < 1100 + sprite_get_number(spr_card_extra1); ++i) {
	global.ispr_s[i] = spr_card_extra1
	global.ispr_i[i] = i - 1100
	global.ispr_o[i] = 1
}

for (i = 1200; i < 1200 + sprite_get_number(spr_card_extra2); ++i) {
	global.ispr_s[i] = spr_card_extra2
	global.ispr_i[i] = i - 1200
	global.ispr_o[i] = 1
}

for (i = 1300; i < 1300 + sprite_get_number(spr_card_extra3); ++i) {
	global.ispr_s[i] = spr_card_extra3
	global.ispr_i[i] = i - 1300
	global.ispr_o[i] = 1
}

for (i = 1400; i < 1400 + sprite_get_number(spr_card_extra4); ++i) {
	global.ispr_s[i] = spr_card_extra4
	global.ispr_i[i] = i - 1400
	global.ispr_o[i] = 1
}

for (i = 1500; i < 1500 + sprite_get_number(spr_card_extra5); ++i) {
	global.ispr_s[i] = spr_card_extra5
	global.ispr_i[i] = i - 1500
	global.ispr_o[i] = 1
}
for (i = 1600; i < 1600 + sprite_get_number(spr_card_extra6); ++i) {
	global.ispr_s[i] = spr_card_extra6
	global.ispr_i[i] = i - 1600
	global.ispr_o[i] = 1
}
for (i = 1700; i < 1700 + sprite_get_number(spr_card_extra7); ++i) {
	global.ispr_s[i] = spr_card_extra7
	global.ispr_i[i] = i - 1700
	global.ispr_o[i] = 1
}

for (i = 1800; i < 1800 + sprite_get_number(spr_card_extra8); ++i) {
	global.ispr_s[i] = spr_card_extra8
	global.ispr_i[i] = i - 1800
	global.ispr_o[i] = 1
}

for (i = 1900; i < 1900 + sprite_get_number(spr_card_extra9); ++i) {
	global.ispr_s[i] = spr_card_extra9
	global.ispr_i[i] = i - 1900
	global.ispr_o[i] = 1
}




alarm[0] = 15


/*
draw_set_color(c_white)
draw_set_font(font0)
draw_set_halign(1)
draw_set_valign(1)


ssurf = surface_create(48,48)
sstr = "0123456789.,/!?()[]:-+=~%ABCDEFGHIJKLMNOPQRSTUVWXYZ"
for(i = 1; i <= string_length(sstr); i++) {
	surface_set_target(ssurf)
	draw_clear_alpha(0,0)
	//gpu_set_blendmode(bm_add)
	//gpu_set_colorwriteenable(0,0,0,1)
	//draw_text_outline(24,24,1,1,3,c_black,string_char_at(sstr,i),2)
	//gpu_set_colorwriteenable(1,1,1,0)
	draw_text(24,24,string_char_at(sstr,i))
	surface_reset_target()
	surface_save(ssurf,"ffnt_"+string_repeat("0",2 - string_length(string(i))) + string(i)+".png")
	//gpu_set_blendmode(bm_normal)
	//gpu_set_colorwriteenable(1,1,1,1)
}

