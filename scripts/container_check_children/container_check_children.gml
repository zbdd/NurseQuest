var children = argument0
var force_delete_all = false

if ds_list_size(children) > 0 {
	for (var i=0; i<ds_list_size(children); i++) {
		var child = children[| i]
		if !instance_exists(child) { force_delete_all = true; break }
	}
}

if force_delete_all {
	for (var i=0; i<ds_list_size(children); i++) {
		var child = children[| i]
		if instance_exists(child) with child instance_destroy()
	}
	ds_list_clear(children)
}

return children