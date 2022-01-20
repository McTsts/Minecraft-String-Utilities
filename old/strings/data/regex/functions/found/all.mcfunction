#tellraw @a ">>> f/a"
# A complete result has been found
data modify storage regex:main out append value {char:[],indices:[]}
data modify storage regex:main out[-1].char set from storage regex:main cur_out
data modify storage regex:main out[-1].indices set from storage regex:main cur_out_ind
data merge storage regex:main {cur_out:[],cur_out_ind:[]}

# Remove points
data modify storage regex:main points set value [{regex:0,string:0}]
execute store result storage regex:main points[0].string int 1 run scoreboard players get index regex
