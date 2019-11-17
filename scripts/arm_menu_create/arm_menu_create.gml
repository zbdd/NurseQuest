/*btn = instance_create_depth(h_w-body.sprite_width/3,h_h,layer_get_depth(layer_get_id("Focused")),o_bodypart)
btn.has_border = true
btn.interactive = false
btn.sprite_index = sp_arm_large
ds_list_add(menu,btn)
var details = convert_map_to_string(global.person.user_details,global.user_details_format)
//btn = button_zoomed_create(h_w+body.sprite_width/2,h_h-body.sprite_height/2,"user_details",details,false)
*/
btn = button_create(menu_x,menu_y,"inspect_skin","Inspect skin",false)
ds_list_add(menu,btn)

btn = button_create(menu_x,menu_y,"close","Close menu",false)
ds_list_add(menu,btn)