execute unless block ~ ~1 ~ #ben10:passable run kill @s
execute as @s run scoreboard players add @s shoot 1
execute as @s run tp @s ^ ^ ^1
execute as @s if block ^ ^1 ^ water run kill @s
execute as @e[tag=SlimeShoot] at @s[distance=..3] run summon minecraft:creeper ~ ~ ~ {Fuse:0,ExplosionRadius:1b}
execute as @e[tag=SlimeShoot] at @s[distance=..3] run kill @e[type=minecraft:armor_stand,tag=FireShoot]
execute as @e[tag=slime] at @s[distance=..3] run summon minecraft:creeper ~ ~ ~ {Fuse:0,ExplosionRadius:1b}
execute as @e[tag=slime] at @s[distance=..3] run kill @e[type=minecraft:armor_stand,tag=FireShoot]
execute as @s[tag=!Sick] as @e at @s[distance=..1] run data merge entity @s[tag=!Kevin,type=!#ben10:nalive] {Fire:100s}
execute as @s[tag=Sick] as @e at @s[distance=..1] run effect give @s[tag=!heatblast,type=!#ben10:nalive] minecraft:slowness 1 1 true
execute as @s[tag=!Blue] as @e[type=!#ben10:nalive,tag=!heatjaws,tag=!swampfire,tag=!heatblast] at @s[distance=..1] run damage @s 6
execute as @s[tag=Blue] as @e[type=!#ben10:nalive,tag=!swampfire] at @s[distance=..1] run damage @s 8
execute as @s[tag=!Blue,tag=!Sick] run particle minecraft:flame ^ ^1 ^ 0 0 0 0.001 10
execute as @s[tag=Sick] run particle minecraft:soul_fire_flame ^ ^1 ^ 0 0 0 0.001 10
execute as @s[tag=Blue] run particle minecraft:soul_fire_flame ^ ^1 ^ 0 0 0 0.001 10
execute as @s[scores={shoot=30..}] run kill @s