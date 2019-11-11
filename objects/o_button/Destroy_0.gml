/// @description Insert description here
// You can write your code in this editor
log_create(string("Deleting: " + string(self) + " | " + string(object_get_name(self.object_index))))
if instance_exists(close) with close { instance_destroy() }