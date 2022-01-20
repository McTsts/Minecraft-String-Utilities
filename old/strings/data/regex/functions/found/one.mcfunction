#tellraw @a ">> f/o"
### a single character has been found

# add character to output
data modify storage regex:main cur_out append from storage regex:main cur_char

# add index to output
data modify storage regex:main cur_out_ind append value 0
execute store result storage regex:main cur_out_ind[-1] int 1 run scoreboard players get index regex

# Increment found counter
scoreboard players add found regex 1