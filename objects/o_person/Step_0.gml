/// @description Insert description here
// You can write your code in this editor
if !active exit

var btn_lt_pressed = mouse_check_button_pressed(mb_left)
var ob_hover = instance_position(mouse_x, mouse_y, self)
hoverover = false

if instance_exists(menu_open) {
	with (menu_open) {
		var btn_lt_pressed = mouse_check_button_pressed(mb_left)
		hover_over = point_in_rectangle(mouse_x,mouse_y,x-border,y-border_y,x+string_width(text)+border,y+string_height(text)+border_y)
		
		if btn_lt_pressed and hover_over and data != noone {
			other.menu_open = btn_create(x,y,false)
			other.menu_open.text = convert_map_to_string(other.user_detail,other.user_format)
		}
	}
}

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

if !hoverover alarm[0] = -1
