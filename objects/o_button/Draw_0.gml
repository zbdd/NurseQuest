/// @description Insert description here
// You can write your code in this editor
event_inherited()

if state == "ACTIVE" {

	draw_set_color(c_black)
	if hover_over
		draw_set_color(c_blue)
	
	draw_rectangle(x-border,y-border_y,x+string_width(text)+border,y+string_height(text)+border_y,false)

	draw_set_color(c_white)
	draw_text(x,y,text)
}