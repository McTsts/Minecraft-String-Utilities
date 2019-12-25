execute store success score $success string run data modify block ~ ~ ~-1 LastOutput set from block ~-1 ~ ~ LastOutput

execute if score $success string matches 0 if score $searching string matches 1 run function string:run/search

# Continue?
scoreboard players add $iterations string 1
execute if score $iterations string >= $max_iterations string run scoreboard players set $searching string 0
execute if score $current string matches ..-4 run scoreboard players set $searching string 0
execute if score $searching string matches 1 run function string:run/continue
execute if score $searching string matches ..0 run function string:run/end

# Reset Tags
data modify entity 00000000-0073-9653-0000-000000000000 Tags set value ["a","b","c"]

# Async Handling
scoreboard players remove $iterations_left string 1
execute if score $iterations_left string matches 0 run function string:run/async/tick_end