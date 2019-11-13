var children = argument0
var new_state = argument1
var state = false

if ds_list_size(children) > 0 {
	for (var i=0; i<ds_list_size(children); i++) {
		var child = children[| i]
		if !instance_exists(child) { return container_check_children(children) }
		
		child.state = new_state
		child.next_state = new_state
	}
}

return state