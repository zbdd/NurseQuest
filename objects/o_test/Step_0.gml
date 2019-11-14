/// @description Insert description here
// You can write your code in this editor
with btn {
	if state == "on_click" {
		other.menu.next_state = "spawn_buttons"
		next_state = "inactive"
	}
}
with (menu) {
	if state == "spawn_buttons" {
		if ds_list_size(children) <= 0 {
			btn = instance_create_depth(1,1,depth-1,o_button)
			btn.text = "Check patient notes"
			btn1 = instance_create_depth(1,1,depth-1,o_button)
			btn1.text = "Speak to patient"
			ds_list_add(children, btn)
			ds_list_add(children, btn1)
		}
		next_state = "active"
	}
}