/// @description Insert description here
// You can write your code in this editor
//show_debug_message("Deleting: " + string(self) + " | " + string(object_get_name(self.object_index)))
log_create(string("Deleting: " + string(self) + " | " + string(object_get_name(self.object_index))))
//ds_list_add(global.log, )
if instance_exists(close) with close { instance_destroy() }