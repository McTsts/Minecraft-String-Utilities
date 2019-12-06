# All supported characters (" are a nightmare and ! and space are pretty annoying)
execute unless score callback string matches 0.. run data modify storage string:in temp set value {string:" !\"#$%&'()*+,-./0123456789:=?ABCDEFGHIJKLMNOPQRSTUVWXYZ[]abcdefghijklmnopqrstuvwxyz{}~",callback:"function example_string:6_all",callbackID:1}
execute unless score callback string matches 0.. run data modify storage string:in input append from storage string:in temp
function string:do/read

# Output if in Callback
execute if score callback string matches 1 run tellraw @a ["[#6] Name: ",{"storage":"string:out","nbt":"out","interpret":false}]