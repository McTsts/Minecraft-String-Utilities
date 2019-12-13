#writing char from check to temp_val array and looping
execute unless data storage parse:list {check:"\\"} run data modify storage parse:list temp_val append from storage parse:list check
function parser:array/string/string_write