#this function looks for the first unresolved object available
data modify storage parse:obj temp_out prepend from storage parse:main check
function parser:res/scan_for_unresolved