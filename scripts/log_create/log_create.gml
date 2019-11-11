if argument_count != 1 exit

var str = argument[0]
var time = string(current_year) + string(current_month) + string(current_day) + string(current_hour) + string(current_minute) + string(current_second)

str = string(time + " " + str)

ds_list_add(global.log, str)