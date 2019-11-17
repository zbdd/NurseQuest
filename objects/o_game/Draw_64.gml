/// @description Insert description here
// You can write your code in this editor
var object = global.person
var str = noone
var list_size = ds_list_size(global.log)
var menu = global.menu

var gui_x = room_width/16
var gui_y = room_height/16

draw_set_color(c_black)
draw_text(gui_x, gui_y, "Log");

for (var i = 0; i < 6; i++) {
	if list_size - i <= 0 break;
	
	draw_text(gui_x, gui_y+16*(i+1), global.log[| (list_size-i-1)])	
}

draw_set_color(c_black)
draw_text(gui_x, gui_y*10, "Announce");

if instance_exists(object) if variable_instance_exists(object,"name") str = object.name else str = object_get_name(object.object_index)
draw_text(gui_x*10, gui_y*10, "Object " + string(str));

list_size = ds_list_size(global.command_log)
for (var i = 0; i < 6; i++) {
	if list_size - i <= 0 break;
	
	draw_text(gui_x, gui_y*10+16*(i+1), global.command_log[| (list_size-i-1)])	
}

for (var i=0;i<ds_list_size(menu);i++) {
	var item = menu[| i]
	item.y = menu_y + 20 * i
	
}