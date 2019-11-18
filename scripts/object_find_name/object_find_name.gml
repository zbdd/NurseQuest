/// @param object_type
/// @param name
var object_type = argument0
var name = argument1

for (var i=0; i<instance_number(object_type);i++) {
	var inst = instance_find(object_type,i)
	if instance_exists(inst)
		if variable_instance_exists(inst,"name")
			if inst.name == name return inst	
}
return noone