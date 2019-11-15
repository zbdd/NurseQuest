/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_black)
draw_text(x, y, "Log");
var list_size = ds_list_size(global.log)
for (var i = 0; i < 6; i++) {
	if list_size - i <= 0 break;
	
	draw_text(x, y+16*(i+1), global.log[| (list_size-i-1)])	
}
draw_set_color(c_black)
draw_text(x, 547, "Announce");
var object = global.object
var str = noone
if instance_exists(object) if variable_instance_exists(object,"name") str = object.name else str = object_get_name(object.object_index)
draw_text(x+200, 547, "Object " + string(str));
list_size = ds_list_size(global.command_log)
for (var i = 0; i < 6; i++) {
	if list_size - i <= 0 break;
	
	draw_text(x, 547+16*(i+1), global.command_log[| (list_size-i-1)])	
}