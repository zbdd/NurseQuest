/// @description Insert description here
// You can write your code in this editor
if state != "inactive" {
	if has_border {
		var offset = 3

		draw_set_color(c_black)
		draw_rectangle(x-offset,y-offset,x+sprite_width+offset,y+sprite_height+offset,false)
		draw_set_color(c_ltgray)
		draw_rectangle(x,y,x+sprite_width,y+sprite_height,false)
	}
		
	draw_self()
		
	if hover_over and interactive {
		image_blend = make_color_rgb(255-step,255-step,255)
			
	} else image_blend = c_white
}
event_inherited()