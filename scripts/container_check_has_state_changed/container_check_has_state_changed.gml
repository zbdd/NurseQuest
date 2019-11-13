var children = argument0
var state = false

if ds_list_size(children) > 0 {
	for (var i=0; i<ds_list_size(children); i++) {
	var child = children[| i]
	if !instance_exists(child) { return false }
		
	if variable_instance_exists(child, "has_state_changed") 
		if child.has_state_changed { child.has_state_changed = false; return child.state }
	}
}

return state