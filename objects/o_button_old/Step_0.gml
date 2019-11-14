/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited()

if state == "ACTIVE" {
	hover_over = point_in_rectangle(mouse_x,mouse_y,x-border,y-border_y,x+string_width(text)+border,y+string_height(text)+border_y)
	
	if btn_lt_pressed and hover_over {
		next_state = "ON_CLICK"
		//show_debug_message("state: " + state + " next_state: " + next_state)
		if data == noone instance_destroy()
	}
	
}
if state == "ON_CLICK" {
	if ds_exists(data,ds_type_list) {
		new_btn = btn_create(x,y,self)
		new_btn.text = convert_map_to_string(data,global.user_details_format)
	}
	next_state = "WAITING"
}
