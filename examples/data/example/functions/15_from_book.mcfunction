execute unless score $callback string matches 0.. run tellraw @a ["\n"]
# Reading value from a skull
execute unless score $callback string matches 0.. run data modify storage string:io temp set value {string:"",callback:{command:"function example:15_from_book",id:1}}
execute unless score $callback string matches 0.. run data modify block -30000000 2 74063 Text1 set value '{"nbt":"SelectedItem.tag.pages","entity":"@p","interpret":true}'
execute unless score $callback string matches 0.. run data modify storage string:io temp.string set from block -30000000 2 74063 Text1
execute unless score $callback string matches 0.. run tellraw @a ["[#15] Input: ",{"storage":"string:io","nbt":"temp.string","interpret":false}]
execute unless score $callback string matches 0.. run data modify storage string:io queue append from storage string:io temp
function string:call

# Output if in Callback
execute if score $callback string matches 1 run data modify storage parse:in in set from storage string:out out
execute if score $callback string matches 1 run function parser:call
execute if score $callback string matches 1 run tellraw @a {"nbt":"out","storage":"string:io"}
execute if score $callback string matches 1 run tellraw @a {"nbt":"out[{Name:[\"main\"]}].Value[{Name:[\"t\",\"e\",\"x\",\"t\"]}].Value","storage":"parse:main","interpret":true}