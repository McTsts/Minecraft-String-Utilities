#runs if new unresolved object is found within another unresolved object and resolves it instead
execute if data storage parse:obj temp_obj[0] run function parser:res/temp_object_dump

#starts object res over for new found object
function parser:res/do_resolve