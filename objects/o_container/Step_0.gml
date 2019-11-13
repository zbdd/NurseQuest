/// @description ACTIVE
// You can write your code in this editor

// valid states ACTIVE WAITING ON_CLICK
var btn_lt_pressed = mouse_check_button_pressed(mb_left)

if btn_lt_pressed {
	var new_state = container_check_has_state_changed(children)
	if is_string(new_state) if new_state == "MENU_CLOSE" next_state = "ACTIVE"
	container_update_state(children, new_state)
	show_debug_message("Children size: " + string(ds_list_size(children)))
	show_debug_message("Children command: " + string(new_state))
}
if state == "ACTIVE" {

}