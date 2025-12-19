execute unless block ~ ~ ~ #svm_ep:no_physical_hitbox run tag @s add end_raycast
execute unless entity @s[distance=..20] run tag @s add end_raycast
scoreboard players set @s[type=!player] svm_ep.p.gravity_ability_04_delay 160

execute as @s[tag=end_raycast] run function svm_ep:power/gravity/field/spawn
#particle dust 1 1 0 2 ~ ~ ~
execute as @s[tag=!end_raycast] positioned ^ ^ ^0.1 run function svm_ep:power/gravity/field/raycast
tag @s remove end_raycast
