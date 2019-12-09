#this shifts entries from the out array into the temp_object array until either an object end is found or another unresolved object is encountered

#shifting entry into check register
function c:nvc

#checks 
execute if data storage parse:main {check:{Type:"object",Extra:["unresolved"]}} run function parser:res/new_unres_found
execute unless data storage parse:main {check:{Type:"object_end"}} run function parser:res/pair_to_temp_obj