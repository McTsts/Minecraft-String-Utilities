#setting up data for object condensing 
data modify storage parse:obj temp_out set value []
data modify storage parse:obj temp_obj set value []

#adds "main" name/value object pair
data modify storage parse:main out prepend value {Value:[],Type:"object",Extra:["unresolved"],Name:["main"]}

#runs object resolution
execute if data storage parse:main out[{Type:"object_end"}] if data storage parse:main out[{Type:"object",Extra:["unresolved"]}] run function parser:res/resolve_objects