execute at @s run summon marker ~ ~ ~ {Tags:["new2"]}

tp @s @e[tag=executor,limit=1]
execute at @s run tp @s ~ ~6.5 ~

execute store result score @s pos.x run data get entity @s Pos[0] 86
execute store result score @s pos.y run data get entity @s Pos[1] 60
execute store result score @s pos.z run data get entity @s Pos[2] 86

tp @s @e[tag=new2,limit=1]
execute store result score @s pos.x2 run data get entity @s Pos[0] 86
execute store result score @s pos.y2 run data get entity @s Pos[1] 60
execute store result score @s pos.z2 run data get entity @s Pos[2] 86
kill @e[tag=new2]

execute store result entity @s Motion[0] double 0.0023 run scoreboard players operation @s pos.x -= @s pos.x2
execute store result entity @s Motion[1] double 0.0019 run scoreboard players operation @s pos.y -= @s pos.y2
execute store result entity @s Motion[2] double 0.0023 run scoreboard players operation @s pos.z -= @s pos.z2
scoreboard players reset @s pos.x
scoreboard players reset @s pos.y
scoreboard players reset @s pos.z