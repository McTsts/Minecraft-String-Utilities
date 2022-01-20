scoreboard players reset $callback string

# Queue empty
execute unless data storage string:internal queue[0] run scoreboard players set $searching string -1

# Queue not empty
execute if data storage string:internal queue[0] run data modify storage string:in string set from storage string:internal queue[0].string
execute if data storage string:internal queue[0] run data modify storage string:in callback.command set from storage string:internal queue[0].callback.command
execute if data storage string:internal queue[0] run data modify storage string:in callback.id set from storage string:internal queue[0].callback.id
execute if data storage string:internal queue[0] run data modify storage string:in async.iterations set from storage string:internal queue[0].async.iterations
execute if data storage string:internal queue[0] run data modify storage string:in async.parallel set from storage string:internal queue[0].async.parallel
execute if data storage string:internal queue[0] run data modify storage string:in ignore set from storage string:in in.ignore
execute if data storage string:internal queue[0] store result score $maxchars string run data get storage string:in in.maxchars
execute if data storage string:internal queue[0] run function string:run/run
