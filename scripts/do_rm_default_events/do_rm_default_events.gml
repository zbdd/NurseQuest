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