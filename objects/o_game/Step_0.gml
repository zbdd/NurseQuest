/// @description Insert description here
// You can write your code in this editor
btn = noone
menu = global.menu
commands = global.commands
log = global.command_log
object = global.object
h_h = room_height/2
h_w = room_width/2
gui_x = room_width/16
gui_y = room_height/16

if instance_exists(object) {
	menu_x = object.x
	menu_y = object.y
}

com = noone

for (var i=0;i<ds_list_size(commands);i++) {
	com = commands[| i]
	ds_list_add(log,com)
	ds_list_delete(commands,i)
	
	if string_pos("pressed",com) {
		for (var aa=0;aa<ds_list_size(menu);aa++) {
			var menu_item = menu[| aa]
			with menu_item { instance_destroy() }
		}
		ds_list_clear(menu)
	}
}

if com != noone
	if is_string(com) {
		
	// these events use the local environment
	if room == rm_default {
		do_rm_default_events()
	}
	if room == rm_bed {
		do_rm_bed_events()
	}
}

for (var i=0;i<ds_list_size(menu);i++) {
	var item = menu[| i]
	item.y = menu_y + 20 * i
	
}