/// @description Insert description here
// You can write your code in this editor
event_inherited()

x = 0
y = 0

menu_x = 544
menu_y = 288

offset_x = 1
offset_y = 24

bed_test = instance_create_depth(544,288,depth,o_bed)
person_test = instance_create_depth(544,288,depth-1,o_person)
person_test.btn = noone

// Tests
//global.person = person_find_name("anna")
//announce("approach::pressed")
announce("create::menu")