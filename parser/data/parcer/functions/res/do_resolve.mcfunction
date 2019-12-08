#places the found object into the "temp_out" array
data modify storage parce:obj temp_out prepend from storage parce:main check

#fills temp object
function parcer:res/fill_temp_object