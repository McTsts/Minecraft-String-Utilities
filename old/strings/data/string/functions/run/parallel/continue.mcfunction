data modify storage string:io out set from storage string:out parallel
execute if score $iterations_left string matches 1 run data modify storage string:out parallel set value []
execute if score $searching string matches -1 run data modify storage string:out parallel set value []