execute unless score callback string matches 1.. run data modify storage string:in temp set value {string:"",callback:{command:"function example:11_seed_pt2",id:1}}
execute unless score callback string matches 1.. run data modify storage string:in temp.string set from block -30000000 3 74063 LastOutput
execute unless score callback string matches 1.. run tellraw @a ["[#11] Input: ",{"storage":"string:in","nbt":"temp.string","interpret":false}]
execute unless score callback string matches 1.. run data modify storage string:in input append from storage string:in temp
function string:call

# JSON
data modify storage parse:in in set from storage string:out out
function parser:call

# Output if in Callback
execute if score callback string matches 1 run tellraw @a ["[#11] Output: ",{"nbt":"out[{Name:[main]}].Value[{Name:[e,x,t,r,a]}].Value.List[0][{Name:[w,i,t,h]}].Value.List[0][{Name:[e,x,t,r,a]}].Value.List[0][{Name:[t,e,x,t]}].Value","storage":"parse:main","interpret":true}]
execute if score callback string matches 1 run setblock -30000000 3 74063 air destroy