/// @description Insert description here
// SET IT ACTIVE ELSEWHERE
step = 0
tick = room_speed * 0.1
active = false
hoverover = false
children = ds_list_create()
user_detail = ds_map_create()
active = false
menu_state = "INACTIVE"
menu_next_state = "INACTIVE"

ds_map_add(user_detail,"name","Anna Biotic")
ds_map_add(user_detail,"id","E23456")
ds_map_add(user_detail,"dob","06/11/1987")