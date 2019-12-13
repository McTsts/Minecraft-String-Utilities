data modify storage parse:list temp_out append from storage parse:main out[0]
data remove storage parse:main out[0]
execute if data storage parse:main out[0] run function parser:array/dump_out_to_temp