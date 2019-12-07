tellraw @a ["\n"]
# Simple Substring of a Char Array
data merge storage substring:in {string:["a","b","c"],start:0,length:2}
tellraw @a ["[#07] Input: ",{"storage":"substring:in","nbt":"string","interpret":false}]
tellraw @a ["[#07] String: ",{"storage":"substring:in","nbt":"string","interpret":true}]
function substring:do/start
tellraw @a ["[#07] Output: ",{"storage":"substring:out","nbt":"string","interpret":false}]
tellraw @a ["[#07] Substr: ",{"storage":"substring:out","nbt":"string","interpret":true}]