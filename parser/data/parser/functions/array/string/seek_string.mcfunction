#looking for the quote
data modify storage parse:list check set from storage parse:list in[0]
execute unless data storage parse:list {check:'"'} run function parser:array/string/seek_string_retry