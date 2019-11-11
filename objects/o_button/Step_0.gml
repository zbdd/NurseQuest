/// @description Insert description here
// You can write your code in this editor

var btn_lt_pressed = mouse_check_button_pressed(mb_left)
hover_over = point_in_rectangle(mouse_x,mouse_y,x-border,y-border_y,x+string_width(text)+border,y+string_height(text)+border_y)

if close == noone exit
	if btn_lt_pressed and hover_over instance_destroy()