var name = argument0
var person = noone
var size = instance_number(o_person)

for(var i=0; i<size; i++) {
	person = instance_find(o_person,i)

	if instance_exists(person)
		if person.name == name return person
}

return noone