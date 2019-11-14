var children = argument0
var new_state = argument1
var force_delete_all = false
var state = false

if state == "MENU_CLOSED" force_delete_all = true

if ds_list_size(children) > 0 {
	for (var i=0; i<ds_list_size(children); i++) {
		var child = children[| i]
		if !instance_exists(child) { if !container_check_children(children) { force_delete_all = true; break } }
		
		child.state = new_state
		child.next_state = new_state
	}
}

if force_delete_all {
	log_create(id, "force_delete_all")
	for (var i=0; i<ds_list_size(children); i++) {
		var child = children[| i]
		if instance_exists(child) with child instance_destroy()
	}
	ds_list_clear(children)
	return "MENU_CLOSED"
}

return state