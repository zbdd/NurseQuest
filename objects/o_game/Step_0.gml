/// @description Insert description here
// You can write your code in this editor
var btn = noone
var menu = global.menu
var commands = global.commands
var log = global.command_log
var com = noone

for (var i=0;i<ds_list_size(commands);i++) {
	var com = commands[| i]
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

if is_string(com) {
	
	if com == "anna::open::pressed" {
		global.object = person_find_name("anna")
		
		btn = button_create(x,y,"check","Check patient details")
		ds_list_add(menu,btn)
			
		btn = button_create(x,y,"approach","Approach bed")
		ds_list_add(menu,btn)
			
		btn = button_create(x,y,"close","Close menu")
		ds_list_add(menu,btn)		
	}
	if com == "check::pressed" {
		var details = convert_map_to_string(global.object.user_details,global.user_details_format)
		btn = button_create(x,y,"user_details",details)
		ds_list_add(menu,btn)
	}
	if com == "close::pressed" {
		global.object = noone
	}
	if com == "user_details::pressed" {
		announce("anna::open::pressed")
	}
	if com == "approach::pressed" {
		room_goto(rm_bed)
		announce("rm_bed::open")
	}
	if com == "rm_bed::open" {
		var h_h = room_height/2
		var h_w = room_width/2
		body = instance_create_depth(h_w,h_h,depth-9,o_bodypart)
		body.name = "body"
		body.sprite_index = sp_body
		body = instance_create_depth(h_w,h_h-body.sprite_height/2,depth-10,o_bodypart)
		body.name = "head"
		body.sprite_index = sp_head
		log_create(body,"create")
	}
}