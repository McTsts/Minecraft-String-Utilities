scoreboard players operation quantifier_index regex = rindex regex
data modify storage regex:main cur_regex set from storage regex:main int_regex
data modify storage regex:main temp_regex set value []
function regex:quantifier/replace
data modify storage regex:main cur_regex set from storage regex:main temp_regex
#tellraw @a ["dcr: ",{"nbt":"cur_regex","storage":"regex:main"}]