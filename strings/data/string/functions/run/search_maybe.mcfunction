execute store success score success string run data modify block ~ ~ ~-1 LastOutput set from block ~-1 ~ ~ LastOutput

execute if score success string matches 0 run function string:run/search

# Continue?
scoreboard players add iterations string 1
execute if score iterations string >= max_iterations string run scoreboard players set searching string 0
execute if score current string matches ..-1 run scoreboard players set searching string 0
execute if score searching string matches 1 run function string:run/continue
execute if score searching string matches 0 run function string:run/end

