/// @description Insert description here
// You can write your code in this editor
	
	/*if sprite_index == -1 
	else  {
		hover_over = position_meeting(mouse_x,mouse_y,self)
if btn_lt_pressed and hover_over next_state = "on_click"*/
var list = ds_list_create()
var btn_lt_pressed = mouse_check_button_pressed(mb_left)
var hover_over = instance_position_list(mouse_x,mouse_y,all,list,true)
var xx = mouse_x
var yy = mouse_y

//point_in_rectangle(mouse_x,mouse_y,x,y,x+string_width(text),y+string_height(text))
for (var i=0;i<ds_list_size(list);i++) {
	if list[| i].object_index == o_button and i != 0 {
		var first = list[| 0]
		ds_list_replace(list,0,list[| i])
		list[| i] = first
	}
	//show_debug_message(string(i) + " " + string(object_get_name(list[| i].object_index)))	
}

if ds_list_size(list) > 0 {
	var focus = list[| 0]
	if instance_exists(focus) {
		if variable_instance_exists(focus,"hover_over") focus.hover_over = true
		if btn_lt_pressed and variable_instance_exists(focus, "btn_lt_pressed") focus.btn_lt_pressed = true	
	}
}

ds_list_destroy(list)
