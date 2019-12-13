#searching for the first unresolved array and placing it at index -1
function parser:array/find_unresolved

#doing parsing
function parser:array/prep_for_parse
function parser:array/get_type
function parser:array/do_type

# finalizing array handling and marking array as resolved
data modify storage parse:list temp_out[-1].Value set from storage parse:list Value
data remove storage parse:list temp_out[-1].Extra[0]

#looping
execute if data storage parse:main out[{Type:"array",Extra:["unresolved"]}] run function parser:array/check