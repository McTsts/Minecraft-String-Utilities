#clears out data until the next quote
data modify storage parce:main check set from storage parce:main in[0]
function c:oec
execute unless data storage parce:main {check:'"'} unless data storage parce:main {check:"end"} run function parcer:name_start_retry