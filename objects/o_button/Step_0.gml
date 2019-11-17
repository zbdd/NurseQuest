/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
if state == "active" {
	if !has_mask_updated {
		if text != "" {
		var image_w = string_width(text)
		var image_h = string_height(text)
		
		image_xscale = image_w/sprite_width
		image_yscale = image_h/sprite_height
	}
	has_mask_updated = true
	}
	
	if btn_lt_pressed and hover_over {
		next_state = "on_click"
		global.object = id
	}
	
	if hover_over {
		hover_over = true
		if alarm[0] == -1 alarm[0] = tick
		if step == max_step step = 0
	}
	
	if next_state == "on_click" {
		log_create(self,string(name+" pressed"))
		announce(name+"::pressed")
	}
}
if state == "on_click" next_state = "destroy_self"
if state == "destroy_self" instance_destroy()

hover_over = false
btn_lt_pressed = false