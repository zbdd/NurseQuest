/// @description Insert description here
// You can write your code in this editor

if !active exit

var btn_lt_pressed = mouse_check_button_pressed(mb_left)
var ob_hover = instance_position(mouse_x, mouse_y, self)
hoverover = false

if ds_list_size(children) > 0 {
	for (var i=0; i<ds_list_size(children); i++) {
		var child = children[| i]
		if !instance_exists(child) { ds_list_delete(children,i); i=0 }
		
		switch (child.object_index) {
			case o_button:
				if child.hasStateChanged menu_next_state = child.state
				else child.next_state = menu_next_state
			break;
		}
	}
}

if ds_list_size(children) <= 0 {
	if ob_hover == self {
		hoverover = true
		if alarm[0] == -1 alarm[0] = tick
		if step == 9 step = 0
	}

	if btn_lt_pressed and ob_hover == self and menu_state == "INACTIVE" {
		var button = btn_create(x,y,false)
		button.text = "Check patient tag"
		button.data = user_detail
		ds_list_add(children,button)
		
		button = btn_create(x,y+32,false)
		button.text = "Test"
		ds_list_add(children,button)
		
		menu_next_state = "ACTIVE"
		
	}
}

if !hoverover alarm[0] = -1
