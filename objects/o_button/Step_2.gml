/// @description Insert description here
// You can write your code in this editor
if state != next_state {
	log_create(self,state + " to " + next_state)
	hasStateChanged = true
} else hasStateChanged = false
	
state = next_state