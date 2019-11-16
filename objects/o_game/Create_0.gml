/// @description Insert description here
// You can write your code in this editor
global.log = ds_list_create()

global.user_details_format[0] = "name"
global.user_details_format[1] = "dob"
global.user_details_format[2] = "mid"

global.commands = ds_list_create()
global.command_log = ds_list_create()

global.menu = ds_list_create()

global.object = noone

global.mouse = instance_create_depth(mouse_x,mouse_y,depth,o_mouse)

test_scenario1()
