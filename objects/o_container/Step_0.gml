/// @description ACTIVE
// You can write your code in this editor

// valid states ACTIVE WAITING ON_CLICK
btn_lt_pressed = mouse_check_button_pressed(mb_left)
var offset_x = 12
var offset_y = 24

if btn_lt_pressed {
	var new_state = container_check_has_state_changed(children)

	//if !is_string(new_state) { new_state = "MENU_CLOSED"; next_state = "ACTIVE" }
	if is_string(new_state) if new_state == "MENU_CLOSED" next_state = "ACTIVE"
	else container_update_state(children, new_state)
}
if state == "ACTIVE" {
	for (var i=0;i<ds_list_size(children); i++) {

		var child = children[| i]
		child.x = x + offset_x
		child.y = y + offset_y * i
	}
}