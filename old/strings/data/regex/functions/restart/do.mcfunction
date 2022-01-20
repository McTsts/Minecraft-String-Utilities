### Jump backs to a certain point with a certain position in regex and string

# Substring
execute if score quantifier regex matches 1 run scoreboard players remove rindex regex 1

data merge storage substring:in {start:0,length:0,string:""}
data modify storage substring:in string set from storage regex:main in.string
execute store result storage substring:in start int 1 run scoreboard players get start_string regex
function substring:do/start
data modify storage regex:main cur_in set from storage substring:out string

data merge storage substring:in {start:0,length:0,string:""}
data modify storage substring:in string set from storage regex:main int_regex
execute store result storage substring:in start int 1 run scoreboard players get rindex regex
function substring:do/start
data modify storage regex:main cur_regex set from storage substring:out string

execute if score quantifier regex matches 1 run function regex:quantifier/decrease
execute if score quantifier regex matches 1 run scoreboard players remove rindex regex 1

# Try again
#tellraw @a ["r: ind -> ",{"score":{"name":"start_string","objective":"regex"}},"; rind -> ",{"score":{"name":"rindex","objective":"regex"}}]
function regex:check

scoreboard players set quantifier regex -1