scoreboard players reset callback string

# Queue empty
execute unless data storage string:internal queue[0] run scoreboard players set searching string -1

# Queue not empty
execute if data storage string:internal queue[0] run data modify storage string:in string set from storage string:internal queue[0].string
execute if data storage string:internal queue[0] run data modify storage string:in callback set from storage string:internal queue[0].callback
execute if data storage string:internal queue[0] run data modify storage string:in callbackID set from storage string:internal queue[0].callbackID
execute if data storage string:internal queue[0] run function string:run/run
