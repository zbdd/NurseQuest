/// @description Insert description here
// You can write your code in this editor
event_inherited()
var menu = global.menu
depth = -1
if !instance_exists(person_test.btn) and room == rm_default {
	if com == "create::menu" or com == "close::pressed" {
		person_test.btn = button_create(menu_x,menu_y,"anna::open","",false)
		person_test.btn.sprite_index = sp_person
	}
}