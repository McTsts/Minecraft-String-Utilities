#finds the first [ or {
data modify storage parse:list check set from storage parse:list in[0]
execute if data storage parse:list in[0] unless data storage parse:list {check:"["} unless data storage parse:list {check:"{"} run function parser:array/cont/seek_open_retry