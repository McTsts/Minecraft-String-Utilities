#this function looks for the first unresolved object available
function c:nvc
execute unless data storage parce:main {check:{Type:"object",Extra:["unresolved"]}} run function parcer:res/scan_for_unresolved_retry