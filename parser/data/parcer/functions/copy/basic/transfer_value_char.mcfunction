#copies character from check register into value array
execute unless data storage parce:main {check:'"'} run data modify storage parce:main pair.Value append from storage parce:main check
function parcer:copy/basic/value