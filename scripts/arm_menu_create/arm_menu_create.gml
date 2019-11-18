
draw_x_offset = 0
draw_x_offset = 50

btn = instance_create_depth(h_w-body.sprite_width/3,h_h,layer_get_depth(layer_get_id("Focused")),o_bodypart)
btn.has_border = true
btn.interactive = false
btn.name = "lt_arm_zoomed"
btn.sprite_index = sp_arm_large

btn = button_create(menu_x,menu_y,"inspect_skin","Inspect skin",false)
ds_list_add(menu,btn)

btn = button_create(menu_x,menu_y,"arm_band","Check wristband",false)
ds_list_add(menu,btn)

btn = button_create(menu_x,menu_y,"lt_arm::close","Close menu",false)
ds_list_add(menu,btn)