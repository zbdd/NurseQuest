/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if state == "active" {
	var btn_lt_pressed = mouse_check_button_pressed(mb_left)
	if sprite_index == -1 hover_over = point_in_rectangle(mouse_x,mouse_y,x,y,x+string_width(text),y+string_height(text))
	else  {
		hover_over = position_meeting(mouse_x,mouse_y,self)

		if hover_over {
			hover_over = true
			if alarm[0] == -1 alarm[0] = tick
			if step == 9 step = 0
		}
	}

	if btn_lt_pressed and hover_over next_state = "on_click"
	
	
	if next_state == "on_click" {
		log_create(self,string(name+" pressed"))
		announce(name+"::pressed")
	}
}