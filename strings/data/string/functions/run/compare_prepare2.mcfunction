# Constructed String = Input String? If so end search
execute if score count string matches 2 run function string:run/compare_found

# Concats: the first /tag list command & the first two enchant commands
data modify block ~ ~1 ~ Text1 set value '{"text":"","extra":[{"nbt":"LastOutput","block":"~-1 ~-1 ~3","interpret":true},{"text":", "},{"nbt":"LastOutput","block":"~-1 ~-1 ~1"},{"text":", "},{"nbt":"LastOutput","block":"~-1 ~-1 ~"}]}'

# Puts sorted tag list and fake constructed tag list onto entity names so that they can be enchantflattened and compared
data modify entity @e[tag=string.out,type=area_effect_cloud,limit=1] CustomName set from block ~ ~ ~-1 LastOutput
data modify entity @e[tag=string.out2,type=area_effect_cloud,limit=1] CustomName set from block ~ ~1 ~ Text1
