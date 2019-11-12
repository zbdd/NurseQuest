/// @description STATE CHANGE
// You can write your code in this editor
if state != next_state {
	log_create(self,state + " to " + next_state)
	has_state_changed = true
} else has_state_changed = false
	
state = next_state