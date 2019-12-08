#runs if new unresolved object is found within another unresolved object and resolves it instead
execute if data storage parce:obj temp_obj[0] run function parcer:res/temp_object_dump

#starts object res over for new found object
function parcer:res/do_resolve