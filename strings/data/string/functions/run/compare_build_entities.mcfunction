data modify storage string:internal tempChar set value [{char:""}]
data modify storage string:internal tempChar[0].char set from storage string:internal string[0]

execute unless data storage string:internal tempChar[{char:"\""}] run data modify block ~ ~1 ~ Text1 set value '[{"block":"~ ~ ~","nbt":"Text1","interpret":true},{"storage":"string:internal","nbt":"string[0]"}]'
execute if data storage string:internal tempChar[{char:"\""}] run data modify block ~ ~1 ~ Text1 set value '[{"block":"~ ~ ~","nbt":"Text1","interpret":true},{"text":"\\""}]'
#\\"'

data remove storage string:internal string[0]
execute if data storage string:internal string[0] run function string:run/compare_build_entities