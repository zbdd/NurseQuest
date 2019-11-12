if argument_count != 2 exit

var str = ""
var index = argument[0]
var action = argument[1]
var time = string(current_year) + string(current_month) + string(current_day) + string(current_hour) + string(current_minute) + string(current_second)

str = string("ID: " + string(index) + " | OBJECT: " + string(object_get_name(index.object_index)))
str = string(time + " " + str + " " + action)

ds_list_add(global.log, str)