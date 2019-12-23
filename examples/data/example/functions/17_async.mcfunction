execute unless score callback string matches 0.. run tellraw @a ["\n"]
# This is done async. Every async.iterations iterations the system stops for the tick and restarts in the next one
data modify storage string:in input append value {string:"abcdefghijklmopqrstuvwxyz just writing some text here so that the async is even worth it because like otherwise what even is the point so you see the point of this thing is so that this can run in the background and not freeze everything else which honestly is quite inconvenient for maps so this runs in the background yay . . .....",callback:{command:"function example:17_async",id:1},async:{iterations:10}}
execute unless score callback string matches 0.. run tellraw @a ["[#17] Input: ",{"storage":"string:in","nbt":"input[-1].string","interpret":false}]
function string:call

# Output
execute if score callback string matches 1 run tellraw @a ["[#17] Output: ",{"storage":"string:out","nbt":"out","interpret":true}]