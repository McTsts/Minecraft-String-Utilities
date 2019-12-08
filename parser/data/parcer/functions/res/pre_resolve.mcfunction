#setting up data for object condensing 
data modify storage parce:obj temp_out set value []
data modify storage parce:obj temp_obj set value []

#adds "main" name/value object pair
data modify storage parce:main out prepend value {Value:[],Type:"object",Extra:["unresolved"],Name:["main"]}

#runs object resolution
execute if data storage parce:main out[{Type:"object_end"}] if data storage parce:main out[{Type:"object",Extra:["unresolved"]}] run function parcer:res/resolve_objects