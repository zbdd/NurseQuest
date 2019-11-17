/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
var offset = 3

draw_set_font(f_close_up)
draw_set_color(c_black)
draw_rectangle(x-offset,y-offset,x+sprite_width+offset,y+sprite_height+offset,false)
draw_set_color(c_ltgray)
draw_rectangle(x,y,x+sprite_width,y+sprite_height,false)

event_inherited();
draw_set_font(f_default)