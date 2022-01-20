## Coordinates = The two enchant commands | Checks if they are the same
execute store success score $success string run data modify block ~ ~ ~-3 LastOutput set from block ~ ~ ~-2 LastOutput

# Next Character has what id?
scoreboard players operation $prev string = $half string
scoreboard players add $half string 1
scoreboard players operation $half string /= $2 string

# Binary search in which direction?
execute if score $success string matches 0 run scoreboard players operation $current string -= $half string
execute if score $success string matches 1 run scoreboard players operation $current string += $half string

# Binary search done?
execute if score $prev string matches ..1 if score $success string matches 0 unless score $current string > $total string run function string:run/compare_found_one
execute if score $current string > $total string run function string:run/quote_fix





