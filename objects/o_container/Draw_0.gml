/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_black)
draw_text(x,y-50, string(ds_list_size(children)))
/*for (var i=0; i<ds_list_size(children);i++) {
	var child = children[| i]
	draw_text(x+50,y-50, string(child.state))
}*/