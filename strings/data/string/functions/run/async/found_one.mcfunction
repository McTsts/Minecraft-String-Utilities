scoreboard players add $foundX string 1
execute if score $foundX string matches 15 run function string:run/async/decrement
execute if score $foundX string matches 15 run scoreboard players set $foundX string 0