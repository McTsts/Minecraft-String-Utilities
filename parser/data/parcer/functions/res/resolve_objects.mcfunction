#this loop resolves objects properly into the name/value pair format

#looks for the first available unresolved object
function parcer:res/scan_for_unresolved

#resolves object
function parcer:res/do_resolve

#shifts data from temp_obj to current object being resolved and marks object as resolved
data modify storage parce:obj temp_out[0].Value set from storage parce:obj temp_obj
data modify storage parce:obj temp_obj set value []
data remove storage parce:obj temp_out[0].Extra[0]

#moves entries from temp_out back to out
function parcer:res/return_pairs

#looping if any unresolved objects remain
execute if data storage parce:main out[{Type:"object_end"}] if data storage parce:main out[{Type:"object",Extra:["unresolved"]}] run function parcer:res/resolve_objects