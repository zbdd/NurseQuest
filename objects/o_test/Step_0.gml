/// @description Insert description here
// You can write your code in this editor
with btn {
	if state == "on_click" {
		log_create(self,string(name+" pressed"))
		has_been_clicked = true
		other.menu.next_state = "spawn_buttons"
		next_state = "inactive"
	}
}
with (menu) {
	if state == "spawn_buttons" {
		if ds_list_size(children) <= 0 {
			xbtn = instance_create_depth(1,1,depth-1,o_button)
			xbtn.text = "Check patient notes"
			xbtn.name = "person:check"
			btn1 = instance_create_depth(1,1,depth-1,o_button)
			btn1.name = "person:speak"
			btn1.text = "Speak to patient"
			ds_list_add(children, xbtn)
			ds_list_add(children, btn1)
		}
		next_state = "active"
	}
	
}