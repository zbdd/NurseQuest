var children = argument[0]

if ds_list_size(children) > 0 {
	for (var i=0; i<ds_list_size(children); i++) {
		var child = children[| i]
		if !instance_exists(child) { return false }
	}
}

return true