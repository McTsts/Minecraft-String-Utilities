#this loop resolves objects properly into the name/value pair format

#looks for the first available unresolved object
function parser:res/scan_for_unresolved

#resolves object
function parser:res/do_resolve

#shifts data from temp_obj to current object being resolved and marks object as resolved
data modify storage parse:obj temp_out[0].Value set from storage parse:obj temp_obj
data modify storage parse:obj temp_obj set value []
data remove storage parse:obj temp_out[0].Extra[0]

#moves entries from temp_out back to out
function parser:res/return_pairs

#looping if any unresolved objects remain
execute if data storage parse:main out[{Type:"object_end"}] if data storage parse:main out[{Type:"object",Extra:["unresolved"]}] run function parser:res/resolve_objects