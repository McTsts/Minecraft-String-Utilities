execute unless score $callback string matches 1.. run data modify storage universal:strings io set value {string:"",callback:{command:"function example:11_seed_pt2",id:1}}
execute unless score $callback string matches 1.. run data modify storage universal:strings io.string set from block -30000000 3 74063 LastOutput
execute unless score $callback string matches 1.. run tellraw @a ["[#11] Input: ",{"storage":"universal:strings","nbt":"io.string","interpret":false}]
function string:callio


# Output if in Callback
execute if score $callback string matches 1 run function parser:callio
execute if score $callback string matches 1 run tellraw @a ["[#11] Output: ",{"nbt":"io[{Name:[e,x,t,r,a]}].Value.List[0][{Name:[w,i,t,h]}].Value.List[0][{Name:[e,x,t,r,a]}].Value.List[0][{Name:[t,e,x,t]}].Value","storage":"universal:strings","interpret":true}]
execute if score $callback string matches 1 run setblock -30000000 3 74063 air destroy