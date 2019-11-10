/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_black)
draw_text(x, y, "Log");
for (var i = 0; i < ds_list_size(global.log); i++) {
	draw_text(x, y+16*(i+1), global.log[| i])	
}