/// @description Insert description here
// You can write your code in this editor
var text = "Testing this little button"
var border = 6
if hoverover
	draw_set_color(c_blue)
else
	draw_set_color(c_black)
draw_rectangle(x-border,y-border,x+string_width(text)+border,y+string_height(text)+border,false)
draw_set_color(c_white)
draw_text(x,y,text)