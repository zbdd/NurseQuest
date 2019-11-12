/// @description Insert description here
// You can write your code in this editor
if menu_state != menu_next_state
	log_create(self,menu_state + " to " + menu_next_state)
	
menu_state = menu_next_state