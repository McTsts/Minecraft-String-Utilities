# Don't read if callback
execute if score $callback string matches 0.. run data remove storage string:in input
execute if score $callback string matches ..0 run data remove storage string:in input

# Read
execute unless score $callback string matches 0.. unless score $callback string matches ..0 run data modify storage string:in in set from storage string:in input[0]
execute unless score $callback string matches 0.. unless score $callback string matches ..0 run function string:run/read
execute unless score $callback string matches 0.. unless score $callback string matches ..0 run data remove storage string:in input[0]
execute unless score $callback string matches 0.. unless score $callback string matches ..0 if data storage string:in input[0] run function string:do/read