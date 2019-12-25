# Loop
data merge block ~ ~ ~ {UpdateLastExecution:0b}
data merge block ~ ~ ~-1 {UpdateLastExecution:0b}
data merge block ~ ~ ~-2 {UpdateLastExecution:0b}
data merge block ~ ~ ~-3 {UpdateLastExecution:0b}
data merge block ~ ~ ~-4 {UpdateLastExecution:0b}
data merge block ~ ~ ~-5 {UpdateLastExecution:0b}
data merge block ~-1 ~ ~ {UpdateLastExecution:0b}
data merge block ~-1 ~ ~-1 {UpdateLastExecution:0b}
data merge block ~-1 ~ ~-2 {UpdateLastExecution:0b}
data merge block ~-1 ~ ~-3 {UpdateLastExecution:0b}
data merge block ~-1 ~ ~-4 {UpdateLastExecution:0b}
data merge block ~-1 ~ ~-5 {UpdateLastExecution:0b}
execute if score $parallel string matches 1 run function string:run/parallel/continue
