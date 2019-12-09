#clears out data until the next quote
data modify storage parse:main check set from storage parse:main in[0]
function c:oec
execute unless data storage parse:main {check:'"'} unless data storage parse:main {check:"end"} run function parser:name_start_retry