/// @desc make a new button
///	@param x
///	@param y
///	@param button_name
///	@param button_text
/// @param is_assessable

bx = argument0
by = argument1 
var name = argument2
var text = argument3
var assess = argument4
button = instance_create_depth(bx,by,depth,o_button_zoomed)
button.name = name
button.text = text
button.is_assessable = assess
return button