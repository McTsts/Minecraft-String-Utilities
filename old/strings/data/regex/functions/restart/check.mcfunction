### Checks if a jump back can happen, or if it's done
# Get last point
execute store result score start_string regex run data get storage regex:main points[-1].string
execute store result score rindex regex run data get storage regex:main points[-1].regex
execute store result score quantifier regex run data get storage regex:main points[-1].quantifier
execute store result score qmax regex run data get storage regex:main points[-1].qmax
execute store result score qmin regex run data get storage regex:main points[-1].qmin
data modify storage regex:main cur_out set from storage regex:main points[-1].out
data modify storage regex:main cur_out_ind set from storage regex:main points[-1].out_ind
data remove storage regex:main points[-1]

# Done / Restart
scoreboard players operation index regex = start_string regex
scoreboard players add start_string regex 1
execute if score start_string regex >= length regex if data storage regex:main points[0] run function regex:restart/check
#execute if score start_string regex < length regex if score quantifier regex matches 0 run tellraw @a "rc -> r"
execute if score start_string regex < length regex if score quantifier regex matches 0 run function regex:restart/point
execute if score start_string regex < length regex if score quantifier regex matches 0 run function regex:restart/do

#execute if score start_string regex < length regex if score quantifier regex matches 1 run tellraw @a "rc -> qr"
execute if score start_string regex < length regex if score quantifier regex matches 1 run function regex:restart/do
