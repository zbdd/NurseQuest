var children = argument[0]
var force_delete_all = false
if argument_count = 2
	force_delete_all = argument[1]

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
	return "MENU_CLOSED"
}

return false