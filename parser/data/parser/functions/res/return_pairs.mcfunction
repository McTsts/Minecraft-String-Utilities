#returns all pairs back into main out array
data modify storage parse:main out prepend from storage parse:obj temp_out[0]
data remove storage parse:obj temp_out[0]
execute if data storage parse:obj temp_out[0] run function parser:res/return_pairs