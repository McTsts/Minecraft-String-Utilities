kill @e[tag=string.block]
setblock ~ ~ ~1 minecraft:command_block[facing=north]{Command:"function string:run/start"} destroy
setblock ~ ~1 ~1 minecraft:oak_sign
setblock ~ ~ ~2 minecraft:stone_button[face=wall,facing=south] destroy

setblock ~ ~ ~-1 minecraft:chain_command_block[facing=north]{auto:1b,Command:"tag @e[name=string.tag2,type=minecraft:area_effect_cloud] list"} destroy
setblock ~ ~ ~-2 minecraft:chain_command_block[facing=north]{auto:1b,Command:"function string:run/compare_build"} destroy
setblock ~ ~1 ~-2 minecraft:oak_sign
setblock ~ ~ ~-3 minecraft:chain_command_block[facing=north]{auto:1b,Command:"enchant @e[tag=string.comp,type=minecraft:area_effect_cloud] minecraft:aqua_affinity"} destroy
setblock ~ ~ ~-4 minecraft:chain_command_block[facing=north]{auto:1b,Command:"enchant @e[tag=string.comp2,type=minecraft:area_effect_cloud] minecraft:aqua_affinity"} destroy
setblock ~ ~ ~-5 minecraft:chain_command_block[facing=east]{auto:1b,Command:"function string:run/compare_prepare"} destroy
setblock ~1 ~ ~-5 minecraft:chain_command_block[facing=south]{auto:1b,Command:"execute store result score count string run tag @e[name=string.tag,type=area_effect_cloud] list"} destroy
setblock ~1 ~ ~-4 minecraft:chain_command_block[facing=south]{auto:1b,Command:"function string:run/compare_prepare2"} destroy
setblock ~1 ~1 ~-4 minecraft:oak_sign
setblock ~1 ~ ~-3 minecraft:chain_command_block[facing=south]{auto:1b,Command:"enchant @e[tag=string.out,type=minecraft:area_effect_cloud] minecraft:aqua_affinity"} destroy
setblock ~1 ~ ~-2 minecraft:chain_command_block[facing=south]{auto:1b,Command:"enchant @e[tag=string.out2,type=minecraft:area_effect_cloud] minecraft:aqua_affinity"} destroy
setblock ~1 ~ ~-1 minecraft:chain_command_block[facing=south]{auto:1b,Command:"help"} destroy
setblock ~1 ~ ~ minecraft:chain_command_block[facing=west]{auto:1b,Command:"function string:run/search_maybe"} destroy
setblock ~ ~ ~ minecraft:chain_command_block[facing=north]{auto:1b,Command:"help"} destroy