execute as @s[tag=osmosian] at @s run function ben10:abilities/osmosian_remove
tag @s remove osmosian
particle dust 1 1 1 1 ~ ~1 ~ 0.2 0.4 0.2 0 10
item replace entity @s[scores={rightclick=1..}] weapon.mainhand with air
tellraw @s [{"translate":"ben10.syringe.empty.t","color":"white"}]