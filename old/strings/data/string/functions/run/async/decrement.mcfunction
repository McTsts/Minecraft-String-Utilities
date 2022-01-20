execute store result score $decrement string run data get storage string:internal async.iterations
execute store result storage string:internal async.iterations int 1 if score $decrement string matches 5.. run scoreboard players remove $decrement string 1
scoreboard players reset $decrement string