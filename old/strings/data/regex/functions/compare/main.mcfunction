## Compare character
# 0 	->	 		Direct Comparison
# 1 	->	 \a 	lower case letter
# 2 	->	 \A 	upper case letter
# 3 	->	 . 		anything
# 4 	->	\w 	letter
# 5	-> 	\W	not letter
# 6 	-> 	\d 	digit
# 7 	-> 	\D 	not digit
scoreboard players set success regex 1
execute if score cur_regex_char regex matches 0 run function regex:compare/default
execute unless score cur_regex_char regex matches 0 run function regex:compare/not_default
#execute unless data storage regex:main cur_char run scoreboard players set success regex 1