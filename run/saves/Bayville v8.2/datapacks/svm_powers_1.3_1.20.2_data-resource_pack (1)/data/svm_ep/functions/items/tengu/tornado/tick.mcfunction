scoreboard players add @s svm_ep.lifetime 1

execute as @s[tag=svm_ep.tornado_display] run function svm_ep:items/tengu/tornado/display_tick
execute as @s[tag=!svm_ep.tornado_display] run function svm_ep:items/tengu/tornado/projectile_tick

kill @s[scores={svm_ep.lifetime=60..}]