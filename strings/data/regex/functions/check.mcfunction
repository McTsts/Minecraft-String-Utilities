## Get Regex Char
# Get character, than if it's a backslash see what group it is for or if its not in a group dont do other checks
data modify storage regex:main cur_regex_char set from storage regex:main cur_regex[0][0]
data remove storage regex:main cur_regex[0]
scoreboard players add rindex regex 1
#tellraw @a ["\n[@] c ",{"score":{"name":"rindex","objective":"regex"}}," -> ",{"nbt":"cur_regex_char","storage":"regex:main"}]
scoreboard players set cur_regex_char regex 0
execute if data storage regex:main {cur_regex_char:"."} run scoreboard players set cur_regex_char regex 3
execute if data storage regex:main {cur_regex_char:"\\"} run function regex:special

# String Check

# Get Quantifier
execute store result score count regex run scoreboard players set min regex 1
execute if data storage regex:main cur_regex[0] run function regex:quantifier/get


# Empty 
execute if score count regex matches 0 run function regex:check_empty

# Check String
scoreboard players set found regex 0
execute unless score success regex matches -2 run function regex:check_string
execute unless score success regex matches -2 if data storage regex:main points[0] run function regex:restart/check

scoreboard players set success regex -2