/// @desc make a new button
///	@param x
///	@param y
///	@param button_name
///	@param button_text

bx = argument0
by = argument1 
var name = argument2
var text = argument3
button = instance_create_depth(bx,by,depth-10,o_button)
button.name = name
button.text = text
return button