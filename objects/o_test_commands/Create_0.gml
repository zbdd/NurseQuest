/// @description Insert description here
// You can write your code in this editor
bed_test = instance_create_depth(544,288,depth,o_bed)
person_test = instance_create_depth(544,288,depth-1,o_new_person)
menu = instance_create_depth(x,y,depth-1,o_menu)
btn = instance_create_depth(544,288,depth-10,o_button)
btn.sprite_index = sp_person