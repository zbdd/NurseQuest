/// @description Insert description here
// You can write your code in this editor
if state == "ACTIVE" {

	btn_lt_pressed = mouse_check_button_pressed(mb_left)
	hover_over = point_in_rectangle(mouse_x,mouse_y,x-border,y-border_y,x+string_width(text)+border,y+string_height(text)+border_y)
		
	if btn_lt_pressed and hover_over and data != noone {
		var child = btn_create(x,y,false)
		ds_list_add(children,child)
		child.text = convert_map_to_string(data,global.user_details_format)
		next_state = "WAITING"
	}
}


//if close == noone exit

/*if btn_lt_pressed and hover_over 
	pressed = true*/
//instance_destroy()