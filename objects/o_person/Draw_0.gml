/// @description Insert description here
// You can write your code in this editor
draw_self()
var offset = 6


if !instance_exists(o_button) and position_meeting(mouse_x, mouse_y, self) {
	draw_set_color(c_blue)
	draw_circle(mouse_x+offset, mouse_y-offset, 8, false)
	
	if alarm[0] == -1 alarm[0] = tick
	if step == 9 step = 0
	
	draw_set_color(c_aqua)
	draw_circle(mouse_x+offset, mouse_y-offset, step, true)
} else {
	alarm[0] = -1	
}