var btn_x = argument[0]
var btn_y = argument[1]
var create_close = argument[2] 
var btn = noone

btn = instance_create_depth(x,y,depth,o_button)
if create_close {
	btn.close = instance_create_depth(btn_x,btn_y,layer_get_id("Buttons"),o_button)
	btn.close.image_index = sp_bt_close
}


return btn