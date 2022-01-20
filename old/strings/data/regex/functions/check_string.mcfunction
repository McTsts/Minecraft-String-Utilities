# Get String Char
data remove storage regex:main cur_char
data modify storage regex:main cur_char set from storage regex:main cur_in[0]
data remove storage regex:main cur_in[0]
# increases string index
scoreboard players add index regex 1
# decrease count of characters to be found
scoreboard players remove count regex 1

#tellraw @a ["[@] cs ",{"score":{"name":"index","objective":"regex"}},"; left: ",{"score":{"name":"count","objective":"regex"}}, " - ",{"nbt":"cur_char","storage":"regex:main"}]

# Check if character matches
function regex:compare/main

# Character not found
execute if score success regex matches 1 run function regex:check_string_1

# Character found
execute if score success regex matches 0 run function regex:check_string_0