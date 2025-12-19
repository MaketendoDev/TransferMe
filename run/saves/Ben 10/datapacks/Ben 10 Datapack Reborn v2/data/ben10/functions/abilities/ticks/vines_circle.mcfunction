execute as @s run scoreboard players add @s shoot 1

execute at @s[scores={shoot=..50}] unless block ~ ~ ~ #ben10:passable run tp @s ~ ~0.2 ~
execute run item replace entity @s armor.head with carrot_on_a_stick{display:{Name:"{\"text\":\"Vine\"}"},Tag:item,CustomModelData:9983} 1
execute run particle minecraft:dust 0.412 0.533 0.345 1 ~ ~ ~ 0.3 0.1 0.3 0 10
execute as @s[scores={shoot=1}] run playsound minecraft:item.crop.plant ambient @a[distance=..20] ~ ~ ~ 20 0.5
execute as @e[type=!#ben10:nalive,tag=!wildvine] at @s[distance=..1.5] run damage @s 8
execute as @e at @s[distance=..2] run effect give @s[tag=!wildvine] poison 1 1
execute as @e at @s[distance=..2] run effect give @s[tag=!wildvine] slowness 3 1
execute as @e at @s[distance=..2] run effect give @s[tag=!wildvine] nausea 3 255

execute as @s[scores={shoot=50..}] run tp @s ~ ~-0.2 ~
execute as @s[scores={shoot=60..}] run kill @s