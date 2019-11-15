/// @description Insert description here
// You can write your code in this editor
var menu = global.menu
depth = -1
if !instance_exists(person_test.btn) and ds_list_size(menu) <= 0 {
	person_test.btn = button_create(544,288,"anna::open","")
	person_test.btn.sprite_index = sp_person
} else {
	for (var i=0;i<ds_list_size(menu); i++) {
		var child = menu[| i]
		if !instance_exists(child) break
		child.x = x + offset_x
		child.y = y + offset_y * i
	}
}