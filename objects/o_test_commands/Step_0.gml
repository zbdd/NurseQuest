/// @description Insert description here
// You can write your code in this editor
var commands = global.commands
var log = global.command_log
var btn = noone
depth = -1
if !instance_exists(person_test.btn) and ds_list_size(menu) <= 0 {
	person_test.btn = button_create(544,288,person_test,"open","")
	person_test.btn.sprite_index = sp_person
} else {
	for (var i=0;i<ds_list_size(menu); i++) {
		var child = menu[| i]
		if !instance_exists(child) break
		child.x = x + offset_x
		child.y = y + offset_y * i
	}
}
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
	
	switch (com) {
		case "anna::open::pressed":
			btn = button_create(x,y,person_test,"check","Check patient details")
			ds_list_add(menu,btn)
			
			btn = button_create(x,y,person_test,"approach","Approach bed")
			ds_list_add(menu,btn)
			
			btn = button_create(x,y,person_test,"close","Close menu")
			ds_list_add(menu,btn)		
		break;
		
		case "anna::check::pressed":
			var details = convert_map_to_string(person_test.user_details,global.user_details_format)
			btn = button_create(x,y,person_test,"user_details",details)
			ds_list_add(menu,btn)
		break
		
		case "anna::user_details::pressed":
			ds_list_add(commands,"anna::open::pressed")
		break
		
		case "anna::approach::pressed":
			room_goto(rm_bed)
		break
	}
}