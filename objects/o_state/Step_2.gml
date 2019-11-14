/// @description Insert description here
// You can write your code in this editor
if state != next_state {
	log_create(self,state + " to " + next_state)
	has_state_changed = true
	state = next_state
} else has_state_changed = false