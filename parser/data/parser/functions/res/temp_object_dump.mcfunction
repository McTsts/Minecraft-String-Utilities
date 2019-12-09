#moves all entries from temp_obj to temp_out in reverse order
data modify storage parse:obj temp_out prepend from storage parse:obj temp_obj[0]
data remove storage parse:obj temp_obj[0]
execute if data storage parse:obj temp_obj[0] run function parser:res/temp_object_dump