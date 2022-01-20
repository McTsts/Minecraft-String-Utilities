execute unless score $callback string matches 0.. run tellraw @a ["\n"]
# Reading value from a skull
execute unless score $callback string matches 0.. run data modify storage universal:strings io set value {string:"",callback:{command:"function example:15_from_book",id:1}}
execute unless score $callback string matches 0.. run data modify block -30000000 2 74063 Text1 set value '{"nbt":"SelectedItem.tag.pages","entity":"@p","interpret":true}'
execute unless score $callback string matches 0.. run data modify storage universal:strings io.string set from block -30000000 2 74063 Text1
execute unless score $callback string matches 0.. run tellraw @a ["[#15] Input: ",{"storage":"universal:strings","nbt":"io.string","interpret":false}]
function string:callio

# Output if in Callback
execute if score $callback string matches 1 run function parser:callio
execute if score $callback string matches 1 run tellraw @a {"nbt":"io","storage":"universal:strings"}
execute if score $callback string matches 1 run tellraw @a {"nbt":"io[{Name:[t,e,x,t]}].Value","storage":"universal:strings","interpret":true}