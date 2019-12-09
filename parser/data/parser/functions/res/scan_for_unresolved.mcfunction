#this function looks for the first unresolved object available
function c:nvc
execute unless data storage parse:main {check:{Type:"object",Extra:["unresolved"]}} run function parser:res/scan_for_unresolved_retry