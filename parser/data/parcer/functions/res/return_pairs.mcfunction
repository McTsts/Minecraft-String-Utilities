#returns all pairs back into main out array
data modify storage parce:main out prepend from storage parce:obj temp_out[0]
data remove storage parce:obj temp_out[0]
execute if data storage parce:obj temp_out[0] run function parcer:res/return_pairs