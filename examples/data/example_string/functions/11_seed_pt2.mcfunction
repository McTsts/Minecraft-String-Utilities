execute unless score callback string matches 1.. run data modify storage string:in temp set value {string:"",callback:"function example_string:11_seed_pt2",callbackID:1}
execute unless score callback string matches 1.. run data modify storage string:in temp.string set from block -30000000 3 74063 LastOutput
execute unless score callback string matches 1.. run tellraw @a ["[#11] Input: ",{"storage":"string:in","nbt":"temp.string","interpret":false}]
execute unless score callback string matches 1.. run data modify storage string:in input append from storage string:in temp
function string:do/read

# Output if in Callback
execute if score callback string matches 1 run tellraw @a ["[#11] Output: ",{"storage":"string:out","nbt":"out","interpret":false}]
execute if score callback string matches 1 run setblock -30000000 3 74063 air destroy