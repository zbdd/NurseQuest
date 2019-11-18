if com == "rm_bed::open" {
		
	body = instance_create_depth(h_w,h_h,layer_get_depth(layer_get_id("Body")),o_bodypart)
	body.name = "body"
	body.sprite_index = sp_body
	
	body = instance_create_depth(h_w-body.sprite_width/3,h_h,layer_get_depth(layer_get_id("Body"))-1,o_bodypart)
	body.name = "lt_arm"
	body.sprite_index = sp_arm
		
	bed = instance_create_depth(h_w+body.sprite_width/2,h_h+body.sprite_height,layer_get_depth(layer_get_id("Instances")),o_bed)
	bed.image_xscale = 2
	bed.image_yscale = 2
		
	body = instance_create_depth(h_w,h_h-body.sprite_height/2,layer_get_depth(layer_get_id("Body"))-1,o_bodypart)
	body.name = "head"
	body.sprite_index = sp_head
		
	body = instance_create_depth(h_w-body.sprite_width/3,h_h,layer_get_depth(layer_get_id("Body"))-3,o_bodypart)
	body.is_assessable = true
	body.name = "arm_band"
	body.sprite_index = sp_red_band
		
	log_create(body,"create")
}
if com == "arm_band::pressed" {
	arm_band_create()
}
if com == "lt_arm::pressed" {
	arm_menu_create()
}
if com == "user_details::pressed" {
	announce("anna::open::pressed")
}
if com == "lt_arm::close::pressed" {
	var to_close = object_find_name(o_bodypart,"lt_arm_zoomed")
	if instance_exists(to_close) with to_close instance_destroy()
	//announce("anna::open::pressed")
}