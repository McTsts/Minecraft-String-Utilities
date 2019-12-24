execute if score $start substring matches 1.. run data remove storage substring:io out[0]
execute if score $start substring matches 1.. run scoreboard players remove $start substring 1
execute if score $start substring matches 0 run function substring:internal/length
execute if score $start substring matches 1.. run function substring:internal/start