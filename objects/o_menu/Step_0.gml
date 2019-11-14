/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
if state == "active" {
	for (var i=0;i<ds_list_size(children); i++) {
		var child = children[| i]
		child.x = x + offset_x
		child.y = y + offset_y * i
	}
	
	var change_state_to = false
	for(var i=0;i<ds_list_size(children);i++) {
		var child = children[| i]
		if instance_exists(child) {
			if child.has_state_changed and child.state == "inactive"
				change_state_to = "inactive"
		}
	}
	
	if is_string(change_state_to) {
		for(var i=0;i<ds_list_size(children);i++) {
			var child = children[| i]
			if instance_exists(child)
				child.next_state = change_state_to
		}	
	}
	
	for(var i=0;i<ds_list_size(children);i++) {
		var child = children[| i]
		if instance_exists(child) {
			if child.object_index == o_button {
				with child {
					if state == "on_click" {
						has_been_clicked = true
						log_create(self,string(name+" pressed"))
						next_state = "inactive"
					}
				}
			}
		}
	}	
	
}

