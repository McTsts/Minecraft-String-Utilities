# Queue Exists
execute unless score $searching string matches -1 run data modify storage string:internal queue append from storage string:in in

# No Queue
execute if score $searching string matches -1 run data modify storage string:in string set from storage string:in in.string
execute if score $searching string matches -1 run data modify storage string:in callback.command set from storage string:in in.callback.command
execute if score $searching string matches -1 run data modify storage string:in callback.id set from storage string:in in.callback.id
execute if score $searching string matches -1 run data modify storage string:in async.iterations set from storage string:in in.async.iterations
execute if score $searching string matches -1 run data modify storage string:in async.parallel set from storage string:in in.async.parallel
execute if score $searching string matches -1 run data modify storage string:in ignore set from storage string:in in.ignore
execute if score $searching string matches -1 store result score $maxchars string run data get storage string:in in.maxchars
execute if score $searching string matches -1 run data modify storage string:in callio set value 0
execute if score $searching string matches -1 run data modify storage string:in callio set from storage string:in in.callio
execute if score $searching string matches -1 run function string:run/run