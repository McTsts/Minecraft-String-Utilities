execute if score length substring matches 1.. run data remove storage substring:internal string[-1]
execute if score length substring matches 1.. run scoreboard players remove length substring 1
execute if score length substring matches 0 run function substring:run/done
execute if score length substring matches 1.. run function substring:run/length