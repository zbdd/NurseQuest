/// @description Insert description here
// You can write your code in this editor

com = noone
menu_x = 544
menu_y = 288
draw_x_offset = 100
draw_y_offset = 50
menu_y_buffer = 30

draw_set_font(f_default)

global.log = ds_list_create()
global.assess = ds_list_create()
global.commands = ds_list_create()
global.command_log = ds_list_create()
global.menu = ds_list_create()

global.object = noone
global.person = noone

global.user_details_format[0] = "name"
global.user_details_format[1] = "dob"
global.user_details_format[2] = "mid"

global.mouse = instance_create_depth(mouse_x,mouse_y,depth,o_mouse)