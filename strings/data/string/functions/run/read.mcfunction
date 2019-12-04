# Queue Exists
execute unless score searching string matches -1 run data modify storage string:internal queue append from storage string:in in

# No Queue
execute if score searching string matches -1 run data modify storage string:in string set from storage string:in in.string
execute if score searching string matches -1 run data modify storage string:in callback set from storage string:in in.callback
execute if score searching string matches -1 run data modify storage string:in callbackID set from storage string:in in.callbackID
execute if score searching string matches -1 run function string:run/run
