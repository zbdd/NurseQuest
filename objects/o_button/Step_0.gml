/// @description Insert description here
// You can write your code in this editor

if close == noone exit

var btn_lt_pressed = mouse_check_button_pressed(mb_left)
var hover_over = position_meeting(mouse_x,mouse_y,close)

if btn_lt_pressed and hover_over instance_destroy()