# Adds the two first enchants to the tags so that they can be sorted
data modify entity @e[name=string.tag,type=area_effect_cloud,limit=1] Tags append from block ~ ~ ~2 LastOutput
data modify entity @e[name=string.tag,type=area_effect_cloud,limit=1] Tags append from block ~ ~ ~1 LastOutput