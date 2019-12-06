# Simple Substring of a Char Array
data merge storage substring:in {string:["a","b","c"],start:0,length:2}
function substring:do/start
tellraw @a ["[#7] Substr: ",{"storage":"substring:out","nbt":"string","interpret":true}]