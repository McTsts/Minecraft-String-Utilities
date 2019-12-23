execute unless score callback string matches 0.. run tellraw @a ["\n"]
# All supported characters (" are a nightmare and ! and space are pretty annoying)
execute unless score callback string matches 0.. run data modify storage string:in temp set value {string:" !\"#$%&'()*+,-./0123456789:<=>?ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]_abcdefghijklmnopqrstuvwxyz{|}~",callback:{command:"function example:6_all",id:1}}
execute unless score callback string matches 0.. run tellraw @a ["[#06] Input: ",{"storage":"string:in","nbt":"temp.string","interpret":false}]
execute unless score callback string matches 0.. run data modify storage string:in input append from storage string:in temp
function string:call

# Output if in Callback
execute if score callback string matches 1 run tellraw @a ["[#06] Output: ",{"storage":"string:out","nbt":"out","interpret":false}]