/// @description Insert description here
// You can write your code in this editor
draw_self()
var offset = 3

if hoverover {
	draw_set_color(c_blue)
	draw_circle(mouse_x+offset, mouse_y-offset, 8, false)
	
	draw_set_color(c_aqua)
	draw_circle(mouse_x+offset, mouse_y-offset, step, true)
}