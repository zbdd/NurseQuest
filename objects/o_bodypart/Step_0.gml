/// @description Insert description here
// You can write your code in this editor

if state == "active" {
	if sprite_index == -1 hover_over = point_in_rectangle(mouse_x,mouse_y,x,y,x+string_width(text),y+string_height(text))
	else  {
		hover_over = position_meeting(mouse_x,mouse_y,self)

		if hover_over {
			hover_over = true
			if alarm[0] == -1 alarm[0] = tick
			if step == max_step step = 0
		}
	}
}