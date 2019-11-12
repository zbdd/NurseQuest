var children = argument0

if ds_list_size(children) > 0 {
	for (var i=0; i<ds_list_size(children); i++) {
	var child = children[| i]
	if !instance_exists(child) { ds_list_delete(children,i); i=0 }
		
	if variable_instance_exists(child, "has_state_changed") 
		if child.has_state_changed return child.state
	}
}

return noone