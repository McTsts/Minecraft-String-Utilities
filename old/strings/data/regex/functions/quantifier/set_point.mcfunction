#tellraw @a ["qpp: qmin -> ",{"score":{"name":"quantifier_min","objective":"regex"}}," qmax -> ",{"score":{"name":"quantifier_max","objective":"regex"}}," index -> ",{"score":{"name":"index","objective":"regex"}}," rnd -> ",{"score":{"name":"rindex","objective":"regex"}}]
#tellraw @a ["qpp: out -> ",{"nbt":"cur_out","storage":"regex:main"}]
data modify storage regex:main points append value {regex:0,string:0,quantifier:1,qmin:0,qmax:0,out:[],out_ind:[]}
execute store result storage regex:main points[-1].qmin int 1 run scoreboard players get quantifier_min regex
execute store result storage regex:main points[-1].qmax int 1 run scoreboard players get quantifier_max regex
execute store result storage regex:main points[-1].regex int 1 run scoreboard players get rindex regex
execute store result storage regex:main points[-1].string int 1 run scoreboard players get index regex
data modify storage regex:main points[-1].out set from storage regex:main cur_out
data modify storage regex:main points[-1].out_ind set from storage regex:main cur_out_ind