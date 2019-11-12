/// @description Insert description here
// You can write your code in this editor
log_create(id, "deleting")

for (var i=0; i<ds_list_size(children); i++) {
	var child = children[| i]
	with child { instance_destroy() }
}
ds_list_destroy(children)