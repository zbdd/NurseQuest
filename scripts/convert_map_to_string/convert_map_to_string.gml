var map = argument0
var keys = argument1
str = ""

for (var i =0; i < array_length_1d(keys); i++) {
	str += "" + string(keys[i]) + ": " + string(ds_map_find_value(map,keys[i])) + "\n"
}

return str