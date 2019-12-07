execute unless score callback string matches 1.. run tellraw @a ["\n"]
# Getting quotes to work was an absolute nightmare
data modify storage string:in input append value {string:"\"",callback:"function example_string:10_quote_test",callbackID:1}
execute unless score callback string matches 1.. run tellraw @a ["[#10] Input: ",{"storage":"string:in","nbt":"input[-1].string","interpret":false}]
data modify storage string:in input append value {string:"aa\"",callback:"function example_string:10_quote_test",callbackID:2}
execute unless score callback string matches 1.. run tellraw @a ["[#10] Input: ",{"storage":"string:in","nbt":"input[-1].string","interpret":false}]
data modify storage string:in input append value {string:"a\"",callback:"function example_string:10_quote_test",callbackID:3}
execute unless score callback string matches 1.. run tellraw @a ["[#10] Input: ",{"storage":"string:in","nbt":"input[-1].string","interpret":false}]
data modify storage string:in input append value {string:"\"a",callback:"function example_string:10_quote_test",callbackID:4}
execute unless score callback string matches 1.. run tellraw @a ["[#10] Input: ",{"storage":"string:in","nbt":"input[-1].string","interpret":false}]
data modify storage string:in input append value {string:"\"aa",callback:"function example_string:10_quote_test",callbackID:5}
execute unless score callback string matches 1.. run tellraw @a ["[#10] Input: ",{"storage":"string:in","nbt":"input[-1].string","interpret":false}]
data modify storage string:in input append value {string:"\"\"",callback:"function example_string:10_quote_test",callbackID:6}
execute unless score callback string matches 1.. run tellraw @a ["[#10] Input: ",{"storage":"string:in","nbt":"input[-1].string","interpret":false}]
data modify storage string:in input append value {string:"\"\"\"\"",callback:"function example_string:10_quote_test",callbackID:7}
execute unless score callback string matches 1.. run tellraw @a ["[#10] Input: ",{"storage":"string:in","nbt":"input[-1].string","interpret":false}]
data modify storage string:in input append value {string:"\"\"\"\"\"\"\"\"\"\"",callback:"function example_string:10_quote_test",callbackID:8}
execute unless score callback string matches 1.. run tellraw @a ["[#10] Input: ",{"storage":"string:in","nbt":"input[-1].string","interpret":false}]
data modify storage string:in input append value {string:"a\"\"\"\"",callback:"function example_string:10_quote_test",callbackID:9}
execute unless score callback string matches 1.. run tellraw @a ["[#10] Input: ",{"storage":"string:in","nbt":"input[-1].string","interpret":false}]
data modify storage string:in input append value {string:"aa\"\"\"\"",callback:"function example_string:10_quote_test",callbackID:10}
execute unless score callback string matches 1.. run tellraw @a ["[#10] Input: ",{"storage":"string:in","nbt":"input[-1].string","interpret":false}]
data modify storage string:in input append value {string:"\"\"\"\"a",callback:"function example_string:10_quote_test",callbackID:11}
execute unless score callback string matches 1.. run tellraw @a ["[#10] Input: ",{"storage":"string:in","nbt":"input[-1].string","interpret":false}]
data modify storage string:in input append value {string:"\"\"\"\"aa",callback:"function example_string:10_quote_test",callbackID:12}
execute unless score callback string matches 1.. run tellraw @a ["[#10] Input: ",{"storage":"string:in","nbt":"input[-1].string","interpret":false}]
data modify storage string:in input append value {string:"aa\"\"\"\"aa",callback:"function example_string:10_quote_test",callbackID:13}
execute unless score callback string matches 1.. run tellraw @a ["[#10] Input: ",{"storage":"string:in","nbt":"input[-1].string","interpret":false}]
data modify storage string:in input append value {string:"aa\"aa",callback:"function example_string:10_quote_test",callbackID:14}
execute unless score callback string matches 1.. run tellraw @a ["[#10] Input: ",{"storage":"string:in","nbt":"input[-1].string","interpret":false}]
function string:do/read

# Output if in Callback
execute if score callback string matches 1.. run tellraw @a ["[#10] ",{"storage":"string:out","nbt":"out","interpret":false}]