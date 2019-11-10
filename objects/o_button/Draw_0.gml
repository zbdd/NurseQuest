/// @description Insert description here
// You can write your code in this editor
var border = 6

image_blend = c_white
if hoverover
	image_blend = c_blue
draw_self()


//draw_rectangle(x-border,y-border,x+string_width(text)+border,y+string_height(text)+border,false)

draw_set_color(c_white)
draw_text(x,y,text)