## Does all tests/examples
scoreboard players add helper string 1

execute if score helper string matches 0 run schedule function example_string:_helper 1t

execute if score helper string matches 2 run function example_string:2_callback
execute if score helper string matches 2 run function example_string:3_callback2
execute if score helper string matches 2 run function example_string:4_multi
execute if score helper string matches 2 run function example_string:5_skull
execute if score helper string matches 2 run function example_string:6_all
execute if score helper string matches 2 run schedule function example_string:_helper 1t

execute if score helper string matches 5 run function example_string:8_substr_string
execute if score helper string matches 5 run function example_string:9_substr_advanced
execute if score helper string matches 5 run function example_string:10_quote_test
execute if score helper string matches 5 run schedule function example_string:_helper 1t


execute if score helper string matches 8 run function example_string:12_name
execute if score helper string matches 8 run function example_string:13_decode64
execute if score helper string matches 8 run function example_string:14_get_unix_time
execute if score helper string matches 8 run replaceitem entity @a weapon.mainhand minecraft:writable_book{pages:["Page1","Page2","Page3"]}
execute if score helper string matches 8 run function example_string:15_from_book
execute if score helper string matches 8 run replaceitem entity @a weapon.mainhand minecraft:air
execute if score helper string matches 8 run function example_string:16_simplify_name
execute if score helper string matches 8 run function example_string:17_async
execute if score helper string matches 8 run schedule function example_string:_helper 1t

