x = argument0
y = argument1 
var parent = argument2
var name = argument3
var text = argument4
button = instance_create_depth(544,288,depth-10,o_button)
button.name = parent.name + "::" + name
button.text = text
return button