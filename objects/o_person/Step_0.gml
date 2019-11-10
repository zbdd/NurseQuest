/// @description Insert description here
// You can write your code in this editor
if !active exit

var btn_lt_pressed = mouse_check_button_pressed(mb_left)
var ob_hover = instance_position(mouse_x, mouse_y, self)
hoverover = false

if instance_exists(menuOpen) {
	ob_hover = position_meeting(mouse_x, mouse_y, menuOpen)
	
	if btn_lt_pressed and ob_hover {
		with menuOpen { instance_destroy() }
		menuOpen = noone
	}
}

if !instance_exists(menuOpen) {
	if ob_hover == self {
		hoverover = true
		if alarm[0] == -1 alarm[0] = tick
		if step == 9 step = 0
	}

	if btn_lt_pressed and ob_hover == self {
		menuOpen = instance_create_depth(self.x,self.y,layer_get_id("Messages"), o_button)
	}
} 

if !hoverover alarm[0] = -1
