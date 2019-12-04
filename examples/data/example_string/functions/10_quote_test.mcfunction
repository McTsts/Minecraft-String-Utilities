# Getting quotes to work was an absolute nightmare
data modify storage string:in input append value {string:"\"",callback:"function example_string:10_quote_test",callbackID:1}
data modify storage string:in input append value {string:"aa\"",callback:"function example_string:10_quote_test",callbackID:1}
data modify storage string:in input append value {string:"a\"",callback:"function example_string:10_quote_test",callbackID:1}
data modify storage string:in input append value {string:"\"a",callback:"function example_string:10_quote_test",callbackID:1}
data modify storage string:in input append value {string:"\"aa",callback:"function example_string:10_quote_test",callbackID:1}
data modify storage string:in input append value {string:"\"\"",callback:"function example_string:10_quote_test",callbackID:1}
data modify storage string:in input append value {string:"\"\"\"\"",callback:"function example_string:10_quote_test",callbackID:1}
data modify storage string:in input append value {string:"\"\"\"\"\"\"\"\"\"\"",callback:"function example_string:10_quote_test",callbackID:1}
data modify storage string:in input append value {string:"a\"\"\"\"",callback:"function example_string:10_quote_test",callbackID:1}
data modify storage string:in input append value {string:"aa\"\"\"\"",callback:"function example_string:10_quote_test",callbackID:1}
data modify storage string:in input append value {string:"\"\"\"\"a",callback:"function example_string:10_quote_test",callbackID:1}
data modify storage string:in input append value {string:"\"\"\"\"aa",callback:"function example_string:10_quote_test",callbackID:1}
data modify storage string:in input append value {string:"aa\"\"\"\"aa",callback:"function example_string:10_quote_test",callbackID:1}
data modify storage string:in input append value {string:"aa\"aa",callback:"function example_string:10_quote_test",callbackID:1}
function string:do/read

# Output if in Callback
execute if score callback string matches 1 run tellraw @a {"storage":"string:out","nbt":"out","interpret":false}