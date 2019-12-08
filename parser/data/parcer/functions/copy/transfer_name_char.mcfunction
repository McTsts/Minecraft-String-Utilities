#copies character from check register into name array
execute unless data storage parce:main {check:'"'} run data modify storage parce:main pair.Name append from storage parce:main check
function parcer:copy/name