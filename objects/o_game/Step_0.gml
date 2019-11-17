/// @description Insert description here
// You can write your code in this editor
var btn = noone
var menu = global.menu
var commands = global.commands
var log = global.command_log
var object = global.person
var h_h = room_height/2
var h_w = room_width/2
gui_x = room_width/16
gui_y = room_height/16

/*if instance_exists(object) {
	menu_x = object.x
	menu_y = object.y
}*/

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
		
	/*show_debug_message("B4 Overlay: " + string(global.overlay_open))
	if string_pos("pressed",com) >= 1 and !global.overlay_open global.overlay_open = true
	else if string_pos("pressed",com) and !global.overlay_open global.overlay_open = true
	show_debug_message("Overlay: " + string(global.overlay_open))
	*/
	if room == rm_default {
		if com == "anna::open::pressed" {
			global.person = person_find_name("anna")
			
			btn = button_create(menu_x,menu_y,"check","Check patient details",true)
			ds_list_add(menu,btn)
			
			btn = button_create(menu_x,menu_y,"approach","Approach bed",false)
			ds_list_add(menu,btn)
			
			btn = button_create(menu_x,menu_y,"close","Close menu",false)
			ds_list_add(menu,btn)		
		}
		if com == "check::pressed" {
			var details = convert_map_to_string(global.person.user_details,global.user_details_format)
			btn = button_create(menu_x,menu_y,"user_details",details,false)
			ds_list_add(menu,btn)
		}
		if com == "close::pressed" {
			global.person = noone
		}
		if com == "user_details::pressed" {
			announce("anna::open::pressed")
		}
		if com == "approach::pressed" {
			room_goto(rm_bed)
			announce("rm_bed::open")
		}
	}
	if room == rm_bed {
		if com == "rm_bed::open" {
		
			body = instance_create_depth(h_w,h_h,layer_get_depth(layer_get_id("Instances"))-1,o_bodypart)
			body.name = "body"
			body.sprite_index = sp_body
		
			bed = instance_create_depth(h_w+body.sprite_width/2,h_h+body.sprite_height,layer_get_depth(layer_get_id("Instances")),o_bed)
			bed.image_xscale = 2
			bed.image_yscale = 2
		
			body = instance_create_depth(h_w,h_h-body.sprite_height/2,layer_get_depth(layer_get_id("Instances"))-2,o_bodypart)
			body.name = "head"
			body.sprite_index = sp_head
		
			body = instance_create_depth(h_w-body.sprite_width/3,h_h,layer_get_depth(layer_get_id("Instances")),o_bodypart)
			body.name = "lt_arm"
			body.sprite_index = sp_arm
		
			body = instance_create_depth(h_w-body.sprite_width/3,h_h,layer_get_depth(layer_get_id("Instances"))-2,o_bodypart)
			body.is_assessable = true
			body.name = "arm_band"
			body.sprite_index = sp_band
		
			log_create(body,"create")
		}
		if com == "arm_band::pressed" {
			if instance_exists(global.object) {
				menu_x = global.object.x
				menu_y = global.object.y
			}
			var details = convert_map_to_string(global.person.user_details,global.user_details_format)
			btn = button_create(h_w+body.sprite_width/2,h_h-body.sprite_height/2,"user_details",details,false)
			ds_list_add(menu,btn)
		}
		if com == "user_details::pressed" {
			announce("anna::open::pressed")
		}
		if com == "check::pressed" {
			var details = convert_map_to_string(global.person.user_details,global.user_details_format)
			btn = button_create(menu_x,menu_y,"user_details",details,false)
			ds_list_add(menu,btn)
		}
	}
}

for (var i=0;i<ds_list_size(menu);i++) {
	var item = menu[| i]
	item.y = menu_y + 20 * i
	
}