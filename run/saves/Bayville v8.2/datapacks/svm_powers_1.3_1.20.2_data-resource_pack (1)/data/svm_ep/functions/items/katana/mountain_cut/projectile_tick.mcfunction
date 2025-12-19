tag @s add executor
scoreboard players add @s svm_ep.lifetime 1
execute as @e[type=player] if score @s svm_ep.entity_id = @e[tag=executor,limit=1] svm_ep.entity_id run tag @s add same_id
execute as @e[tag=svm_ep.power_user] if score @s svm_ep.entity_id = @e[tag=executor,limit=1] svm_ep.entity_id run tag @s add same_id
execute at @s run function svm_ep:items/katana/mountain_cut/raycast
tag @s remove end_raycast
execute at @s run tp @s ~ ~ ~ ~2 ~
execute at @s run function svm_ep:items/katana/mountain_cut/raycast
tag @s remove end_raycast
execute at @s run tp @s ~ ~ ~ ~2 ~
execute at @s run function svm_ep:items/katana/mountain_cut/raycast
tag @s remove end_raycast
execute at @s run tp @s ~ ~ ~ ~2 ~
execute at @s run function svm_ep:items/katana/mountain_cut/raycast
tag @s remove end_raycast
execute at @s run tp @s ~ ~ ~ ~2 ~
execute at @s run function svm_ep:items/katana/mountain_cut/raycast
tag @s remove end_raycast
execute at @s run function svm_ep:items/katana/mountain_cut/raycast
tag @s remove end_raycast
execute at @s run tp @s ~ ~ ~ ~2 ~
execute at @s run function svm_ep:items/katana/mountain_cut/raycast
tag @s remove end_raycast
execute at @s run tp @s ~ ~ ~ ~2 ~
execute at @s run function svm_ep:items/katana/mountain_cut/raycast
tag @s remove end_raycast
execute at @s run tp @s ~ ~ ~ ~2 ~
execute at @s run function svm_ep:items/katana/mountain_cut/raycast
tag @s remove end_raycast
execute at @s run tp @s ~ ~ ~ ~2 ~
execute at @s run function svm_ep:items/katana/mountain_cut/raycast
tag @s remove end_raycast

execute at @s run playsound minecraft:item.trident.riptide_3 player @a[distance=..50] ~ ~ ~ 1 1.3
execute at @s run playsound minecraft:item.trident.riptide_1 player @a[distance=..50] ~ ~ ~ 0.8 0
playsound minecraft:entity.player.hurt_freeze master @a[distance=..30] ~ ~ ~ 0.75 0.2

tag @s remove executor
#title @a title ["",{"score":{"name":"@s","objective":"svm_ep.lifetime"}},{"text":" ddd"}]
tag @e remove same_id
kill @s[scores={svm_ep.lifetime=12..}]