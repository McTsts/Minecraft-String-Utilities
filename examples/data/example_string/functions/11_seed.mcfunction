tellraw @a ["\n"]
gamerule sendCommandFeedback true
setblock -30000000 3 74063 command_block{auto:1b,Command:"seed"} destroy
schedule function example_string:11_seed_pt2 2t