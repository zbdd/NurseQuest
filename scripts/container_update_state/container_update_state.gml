var children = argument0
var new_state = argument1

if ds_list_size(children) > 0 {
	for (var i=0; i<ds_list_size(children); i++) {
		var child = children[| i]
		if !instance_exists(child) { ds_list_delete(children,i); i=0 }
		
		child.next_state = new_state
	}
}