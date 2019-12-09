#places the found object into the "temp_out" array
data modify storage parse:obj temp_out prepend from storage parse:main check

#fills temp object
function parser:res/fill_temp_object