/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_black)
draw_text(x, y, "Log");
var list_size = ds_list_size(global.log)
for (var i = 0; i < 6; i++) {
	if list_size - i <= 0 break;
	
	draw_text(x, y+16*(i+1), global.log[| (list_size-i-1)])	
}