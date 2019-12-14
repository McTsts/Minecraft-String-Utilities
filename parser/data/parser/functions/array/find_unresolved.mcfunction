#moving data from out to temp out and setting check value
data modify storage parse:list temp_out append from storage parse:main out[0]
data remove storage parse:main out[0]
data modify storage parse:list check set from storage parse:list temp_out[-1]

#looping if unresolved isn't found
execute unless data storage parse:list {check:{Type:"array",Extra:["unresolved"]}} run function parser:array/find_unresolved