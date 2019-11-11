var btn_x = argument[0]
var btn_y = argument[1]
var create_close = argument[2] 

var btn = noone

btn = instance_create_depth(btn_x,btn_y,layer_get_id("Buttons"),o_button)

// click itself to close
if !create_close btn.close = btn

if create_close {
	btn.close = instance_create_depth(btn_x+btn.sprite_width,btn_y+3,layer_get_id("Buttons")-1,o_button)
	btn.close.sprite_index = sp_bt_close
	btn.close.x -= btn.close.sprite_width * 2
	btn.close.text = ""
}


return btn