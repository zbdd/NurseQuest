/// @description Insert description here
// You can write your code in this editor
var btn_lt_pressed = mouse_check_button_pressed(mb_left)

if close == noone exit

var ob_hover = instance_position(mouse_x, mouse_y, close)

if btn_lt_pressed and ob_hover { instance_destroy() }