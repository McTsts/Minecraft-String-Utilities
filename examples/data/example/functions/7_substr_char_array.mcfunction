tellraw @a ["\n"]
# Simple Substring of a Char Array
data merge storage substring:io {in:{string:["a","b","c"],start:0,length:2}}
tellraw @a ["[#07] Input: ",{"storage":"substring:io","nbt":"in.string","interpret":false}]
tellraw @a ["[#07] String: ",{"storage":"substring:io","nbt":"in.string","interpret":true}]
function substring:call
tellraw @a ["[#07] Output: ",{"storage":"substring:io","nbt":"out","interpret":false}]
tellraw @a ["[#07] Substr: ",{"storage":"substring:io","nbt":"out","interpret":true}]