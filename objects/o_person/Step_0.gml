/// @description Insert description here
// You can write your code in this editor
if !active exit

var btn_lt_pressed = mouse_check_button_pressed(mb_left)
var ob_hover = instance_position(mouse_x, mouse_y, self)
hoverover = false

if !instance_exists(menu_open) {
	if ob_hover == self {
		hoverover = true
		if alarm[0] == -1 alarm[0] = tick
		if step == 9 step = 0
	}

	if btn_lt_pressed and ob_hover == self {
		menu_open = btn_create(x,y,false)
		menu_open.text = "Check patient tag"
		menu_open.data = user_detail
	}
} 

if instance_exists(menu_open) {
	with (menu_open) {
		var btn_lt_pressed = mouse_check_button_pressed(mb_left)
		var ob_hover = instance_position(mouse_x, mouse_y, self)
		
		/*if btn_lt_pressed and ob_hover == self and ds_list_size(children) == 0 
			dialog = btn_create(x,y,
			ds_list_add(children, )*/
	}
}

if !hoverover alarm[0] = -1
