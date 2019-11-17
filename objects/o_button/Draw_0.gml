/// @description Insert description here
// You can write your code in this editor
offset = 16

if state == "active" {
	{
		draw_self()

		if hover_over and text == "" {
			draw_set_color(c_blue)
			draw_circle(mouse_x+offset, mouse_y-offset, 8, false)
	
			draw_set_color(c_yellow)
			draw_circle(mouse_x+offset, mouse_y-offset, step, false)
		} else {
			if hover_over
				draw_set_color(c_blue)
			else draw_set_colour(c_black)	
			
			if sprite_index == sp_bounding_box { 
				draw_rectangle(x,y,x+string_width(text),y+string_height(text), false)
				draw_set_color(c_white)	
			}
				
			draw_text(x,y,text)	
		}
	}
}
