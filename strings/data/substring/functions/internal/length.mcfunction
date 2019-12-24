execute if score $length substring matches 1.. run data remove storage substring:io out[-1]
execute if score $length substring matches 1.. run scoreboard players remove $length substring 1
execute if score $length substring matches 1.. run function substring:internal/length