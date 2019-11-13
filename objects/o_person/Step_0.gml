/// @description Insert description here
// You can write your code in this editor
btn_lt_pressed = mouse_check_button_pressed(mb_left)
ob_hover = instance_position(mouse_x, mouse_y, self)
hover_over = false


if menu_state == "WAITING" {
	if ds_list_size(children) <= 0 {
		if ob_hover == self {
			hover_over = true
			if alarm[0] == -1 alarm[0] = tick
			if step == 9 step = 0
		}

		if btn_lt_pressed and ob_hover == self {
			menu_next_state = "ON_CLICK"
		}
	}
}
if menu_state == "ON_CLICK" {
	container = instance_create_depth(x,y,depth-1,o_container)
	check = btn_create(x,y,container)
	test = btn_create(x,y,container)

	check.text = "Check patient details"
	check.data = user_detail

	test.text = "Test button"
	
	menu_next_state = "WAITING"
}
if !hover_over alarm[0] = -1
