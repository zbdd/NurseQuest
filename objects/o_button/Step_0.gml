/// @description Insert description here
// You can write your code in this editor
event_inherited()

if state == "ACTIVE" {	
	if btn_lt_pressed and hover_over and data != noone {
		var child = btn_create(x,y,false)
		ds_list_add(children,child)
		child.text = convert_map_to_string(data,global.user_details_format)
		next_state = "WAITING"
	}
}