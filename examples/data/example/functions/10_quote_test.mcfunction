execute unless score $callback string matches 1.. run tellraw @a ["\n"]
# Getting quotes to work was an absolute nightmare
data modify storage string:io queue append value {string:"\"",callback:{command:"function example:10_quote_test",id:1}}
execute unless score $callback string matches 1.. run tellraw @a ["[#10] Input: ",{"storage":"string:io","nbt":"queue[-1].string","interpret":false}]
data modify storage string:io queue append value {string:"aa\"",callback:{command:"function example:10_quote_test",id:2}}
execute unless score $callback string matches 1.. run tellraw @a ["[#10] Input: ",{"storage":"string:io","nbt":"queue[-1].string","interpret":false}]
data modify storage string:io queue append value {string:"a\"",callback:{command:"function example:10_quote_test",id:3}}
execute unless score $callback string matches 1.. run tellraw @a ["[#10] Input: ",{"storage":"string:io","nbt":"queue[-1].string","interpret":false}]
data modify storage string:io queue append value {string:"\"a",callback:{command:"function example:10_quote_test",id:4}}
execute unless score $callback string matches 1.. run tellraw @a ["[#10] Input: ",{"storage":"string:io","nbt":"queue[-1].string","interpret":false}]
data modify storage string:io queue append value {string:"\"aa",callback:{command:"function example:10_quote_test",id:5}}
execute unless score $callback string matches 1.. run tellraw @a ["[#10] Input: ",{"storage":"string:io","nbt":"queue[-1].string","interpret":false}]
data modify storage string:io queue append value {string:"\"\"",callback:{command:"function example:10_quote_test",id:6}}
execute unless score $callback string matches 1.. run tellraw @a ["[#10] Input: ",{"storage":"string:io","nbt":"queue[-1].string","interpret":false}]
data modify storage string:io queue append value {string:"\"\"\"\"",callback:{command:"function example:10_quote_test",id:7}}
execute unless score $callback string matches 1.. run tellraw @a ["[#10] Input: ",{"storage":"string:io","nbt":"queue[-1].string","interpret":false}]
data modify storage string:io queue append value {string:"\"\"\"\"\"\"\"\"\"\"",callback:{command:"function example:10_quote_test",id:8}}
execute unless score $callback string matches 1.. run tellraw @a ["[#10] Input: ",{"storage":"string:io","nbt":"queue[-1].string","interpret":false}]
data modify storage string:io queue append value {string:"a\"\"\"\"",callback:{command:"function example:10_quote_test",id:9}}
execute unless score $callback string matches 1.. run tellraw @a ["[#10] Input: ",{"storage":"string:io","nbt":"queue[-1].string","interpret":false}]
data modify storage string:io queue append value {string:"aa\"\"\"\"",callback:{command:"function example:10_quote_test",id:10}}
execute unless score $callback string matches 1.. run tellraw @a ["[#10] Input: ",{"storage":"string:io","nbt":"queue[-1].string","interpret":false}]
data modify storage string:io queue append value {string:"\"\"\"\"a",callback:{command:"function example:10_quote_test",id:11}}
execute unless score $callback string matches 1.. run tellraw @a ["[#10] Input: ",{"storage":"string:io","nbt":"queue[-1].string","interpret":false}]
data modify storage string:io queue append value {string:"\"\"\"\"aa",callback:{command:"function example:10_quote_test",id:12}}
execute unless score $callback string matches 1.. run tellraw @a ["[#10] Input: ",{"storage":"string:io","nbt":"queue[-1].string","interpret":false}]
data modify storage string:io queue append value {string:"aa\"\"\"\"aa",callback:{command:"function example:10_quote_test",id:13}}
execute unless score $callback string matches 1.. run tellraw @a ["[#10] Input: ",{"storage":"string:io","nbt":"queue[-1].string","interpret":false}]
data modify storage string:io queue append value {string:"aa\"aa",callback:{command:"function example:10_quote_test",id:14}}
execute unless score $callback string matches 1.. run tellraw @a ["[#10] Input: ",{"storage":"string:io","nbt":"queue[-1].string","interpret":false}]
function string:call

# Output if in Callback
execute if score $callback string matches 1.. run tellraw @a ["[#10] ",{"nbt":"out","storage":"string:io","interpret":false}]