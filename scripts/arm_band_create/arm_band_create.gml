
var details = convert_map_to_string(global.person.user_details,global.user_details_format)

btn = button_create(menu_x,menu_y,"arm_zoom",details,false)
btn.depth = layer_get_depth(layer_get_id("Buttons"))
btn.sprite_index = sp_red_band_large
btn.draw_x_offset = 100
btn.draw_y_offset = 50