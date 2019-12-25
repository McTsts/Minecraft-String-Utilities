execute unless score $callback string matches 1.. run data modify storage string:io temp set value {string:"",callback:{command:"function example:11_seed_pt2",id:1}}
execute unless score $callback string matches 1.. run data modify storage string:io temp.string set from block -30000000 3 74063 LastOutput
execute unless score $callback string matches 1.. run tellraw @a ["[#11] Input: ",{"storage":"string:io","nbt":"temp.string","interpret":false}]
execute unless score $callback string matches 1.. run data modify storage string:io queue append from storage string:io temp
function string:call

# JSON
data modify storage parse:in in set from storage string:io out
function parser:call

# Output if in Callback
execute if score $callback string matches 1 run tellraw @a ["[#11] Output: ",{"nbt":"out[{Name:[main]}].Value[{Name:[e,x,t,r,a]}].Value.List[0][{Name:[w,i,t,h]}].Value.List[0][{Name:[e,x,t,r,a]}].Value.List[0][{Name:[t,e,x,t]}].Value","storage":"parse:main","interpret":true}]
execute if score $callback string matches 1 run setblock -30000000 3 74063 air destroy