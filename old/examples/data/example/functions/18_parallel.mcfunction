execute unless score $callback string matches 0.. run tellraw @a ["\n"]
# This is done async. Every async.iterations iterations the system stops for the tick and restarts in the next one
data modify storage string:io queue append value {string:"abcdefghijklmopqrstuvwxyz just writing some text here so that the async is even worth it because like otherwise what even is the point so you see the point of this thing is so that this can run in the background and not freeze everything else which honestly is quite inconvenient for maps so this runs in the background yay . . .....",callback:{command:"function example:18_parallel",id:1},async:{iterations:10,parallel:1}}
execute unless score $callback string matches 0.. run tellraw @a ["[#18] Input: ",{"storage":"string:io","nbt":"queue[-1].string","interpret":false}]
function string:call

# Output
execute if score $callback string matches 1 if data storage string:io out[0] run tellraw @a ["[#18] Output: ",{"storage":"string:io","nbt":"out","interpret":true}]