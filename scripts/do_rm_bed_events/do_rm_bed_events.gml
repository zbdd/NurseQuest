if com == "rm_bed::open" {
		
	body = instance_create_depth(h_w,h_h,layer_get_depth(layer_get_id("Instances"))-1,o_bodypart)
	body.name = "body"
	body.sprite_index = sp_body
		
	bed = instance_create_depth(h_w+body.sprite_width/2,h_h+body.sprite_height,layer_get_depth(layer_get_id("Instances")),o_bed)
	bed.image_xscale = 2
	bed.image_yscale = 2
		
	body = instance_create_depth(h_w,h_h-body.sprite_height/2,layer_get_depth(layer_get_id("Instances"))-2,o_bodypart)
	body.name = "head"
	body.sprite_index = sp_head
		
	body = instance_create_depth(h_w-body.sprite_width/3,h_h,layer_get_depth(layer_get_id("Instances")),o_bodypart)
	body.name = "lt_arm"
	body.sprite_index = sp_arm
		
	body = instance_create_depth(h_w-body.sprite_width/3,h_h,layer_get_depth(layer_get_id("Instances"))-2,o_bodypart)
	body.is_assessable = true
	body.name = "arm_band"
	body.sprite_index = sp_red_band
		
	log_create(body,"create")
}
if com == "arm_band::pressed" {
	if instance_exists(global.object) {
		menu_x = global.object.x
		menu_y = global.object.y
	}
	var details = convert_map_to_string(global.person.user_details,global.user_details_format)
	btn = button_zoomed_create(h_w+body.sprite_width/2,h_h-body.sprite_height/2,"user_details",details,false)
	btn.sprite_index = sp_red_band_large
	btn.has_mask_updated = true
	ds_list_add(menu,btn)
}
if com == "lt_arm::pressed" {
		btn = button_zoomed_create(menu_x,menu_y,"arm_large","",false)
		btn.sprite_index = sp_arm_large
		ds_list_add(menu,btn)
}
if com == "user_details::pressed" {
	announce("anna::open::pressed")
}