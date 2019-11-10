/// @description Insert description here
// You can write your code in this editor
if !instance_exists(o_button) {
	if mouse_check_button_pressed(mb_left) and position_meeting(mouse_x, mouse_y, self) {
		inFocus = true
		menuOpen = instance_create_depth(self.x,self.y,layer_get_id("Messages"), o_button) menuOpen = true
	}
}