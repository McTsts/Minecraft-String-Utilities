execute unless score $callback string matches 0.. run tellraw @a ["\n"]
# All supported characters (" are a nightmare and ! and space are pretty annoying)
execute unless score $callback string matches 0.. run data modify storage string:io temp set value {string:" !\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~",callback:{command:"function example:6_all",id:1}}
execute unless score $callback string matches 0.. run tellraw @a ["[#06] Input: ",{"storage":"string:io","nbt":"temp.string","interpret":false}]
execute unless score $callback string matches 0.. run data modify storage string:io queue append from storage string:io temp
function string:call

# Output if in Callback
execute if score $callback string matches 1 run tellraw @a ["[#06] Output: ",{"nbt":"out","storage":"string:io","interpret":false}]