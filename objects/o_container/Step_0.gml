/// @description ACTIVE
// You can write your code in this editor
if state == "ACTIVE" {
	var new_state = container_check_has_state_changed(children)
	if is_string(new_state) container_update_state(children, new_state)
	
	btn_lt_pressed = mouse_check_button_pressed(mb_left)
	hover_over = point_in_rectangle(mouse_x,mouse_y,x-border,y-border_y,x+string_width(text)+border,y+string_height(text)+border_y)
	
}