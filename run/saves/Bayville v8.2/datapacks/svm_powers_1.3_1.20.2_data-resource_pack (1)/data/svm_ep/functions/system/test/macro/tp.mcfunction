data modify storage svm_ep:coordinates input set value {"x":0,"y":0,"z":0}
execute store result storage svm_ep:coordinates input.x int 1 run scoreboard players get .x svm_ep.tp_to
execute store result storage svm_ep:coordinates input.y int 1 run scoreboard players get .y svm_ep.tp_to
execute store result storage svm_ep:coordinates input.z int 1 run scoreboard players get .z svm_ep.tp_to
execute as @s[tag=!tp_relative] run function svm_ep:system/test/macro/tp0 with storage svm_ep:coordinates input
execute as @s[tag=tp_relative] run function svm_ep:system/test/macro/tp1 with storage svm_ep:coordinates input