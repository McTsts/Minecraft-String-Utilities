# Command Blocks
setblock ~ ~ ~ minecraft:command_block[facing=north]{Command:"function string:run/start",TrackOutput:0b} destroy
setblock ~ ~ ~-1 minecraft:chain_command_block[facing=north]{auto:1b,Command:"help me"} destroy
setblock ~ ~ ~-2 minecraft:chain_command_block[facing=north]{auto:1b,Command:"tag 00000000-0073-9653-0000-000000000000 list",CustomName:'""'} destroy
setblock ~ ~ ~-3 minecraft:chain_command_block[facing=north]{auto:1b,Command:"function string:run/compare_build",TrackOutput:0b} destroy
setblock ~ ~ ~-4 minecraft:chain_command_block[facing=north]{auto:1b,Command:"enchant 00000000-0073-9653-0000-000000000001 minecraft:aqua_affinity",CustomName:'""'} destroy
setblock ~ ~ ~-5 minecraft:chain_command_block[facing=north]{auto:1b,Command:"enchant 00000000-0073-9653-0000-000000000002 minecraft:aqua_affinity",CustomName:'""'} destroy
setblock ~ ~ ~-6 minecraft:chain_command_block[facing=east]{auto:1b,Command:"function string:run/compare_prepare",TrackOutput:0b} destroy
setblock ~1 ~ ~-6 minecraft:chain_command_block[facing=south]{auto:1b,Command:"execute store result score $count string run tag 00000000-0073-9653-0000-000000000000 list",CustomName:'""'} destroy
setblock ~1 ~ ~-5 minecraft:chain_command_block[facing=south]{auto:1b,Command:"function string:run/compare_prepare2",TrackOutput:0b} destroy
setblock ~1 ~ ~-4 minecraft:chain_command_block[facing=south]{auto:1b,Command:"enchant 00000000-0073-9653-0000-000000000003 minecraft:aqua_affinity",CustomName:'""'} destroy
setblock ~1 ~ ~-3 minecraft:chain_command_block[facing=south]{auto:1b,Command:"enchant 00000000-0073-9653-0000-000000000002 minecraft:aqua_affinity",CustomName:'""'} destroy
setblock ~1 ~ ~-2 minecraft:chain_command_block[facing=south]{auto:1b,Command:"help me"} destroy
setblock ~1 ~ ~-1 minecraft:chain_command_block[facing=west]{auto:1b,Command:"function string:run/search_maybe",TrackOutput:0b} destroy

# Other
setblock ~ ~1 ~ minecraft:oak_sign