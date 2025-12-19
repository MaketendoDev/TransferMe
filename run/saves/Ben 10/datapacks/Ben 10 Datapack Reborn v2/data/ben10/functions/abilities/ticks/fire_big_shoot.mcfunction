execute as @s if block ^ ^1 ^1 minecraft:beacon run function ben10:self_destruct_mode
execute as @s[tag=!Sick,scores={shoot=5..20}] run setblock ~ ~ ~ fire keep
execute as @s[tag=!Sick,scores={shoot=5..20}] run execute unless block ~ ~ ~ sand if block ~ ~-1 ~ sand run setblock ~ ~-1 ~ glass
execute as @s[tag=!Sick,scores={shoot=5..20}] run execute if block ~ ~ ~ sand unless block ~ ~-1 ~ sand run setblock ~ ~ ~ glass
execute as @s run scoreboard players add @s shoot 1
execute as @s run tp @s ^ ^ ^1
execute as @s if block ^ ^1 ^ water run kill @s
execute as @e[tag=SlimeShoot] at @s[distance=..3] run summon minecraft:creeper ~ ~ ~ {Fuse:0,ExplosionRadius:1b}
execute as @e[tag=SlimeShoot] at @s[distance=..3] run kill @e[type=minecraft:armor_stand,tag=FireBigShoot]
execute as @e[tag=slime] at @s[distance=..3] run summon minecraft:creeper ~ ~ ~ {Fuse:0,ExplosionRadius:1b}
execute as @e[tag=slime] at @s[distance=..3] run kill @e[type=minecraft:armor_stand,tag=FireBigShoot]

execute as @s[tag=!Sick] as @e at @s[distance=..1] run data merge entity @s[tag=!Kevin,type=!#ben10:nalive] {Fire:200s}
execute as @s[tag=Sick] as @e at @s[distance=..1] run effect give @s[tag=!heatblast,type=!#ben10:nalive] minecraft:slowness 1 2 true

execute as @e[type=!#ben10:nalive,tag=!heatblast,tag=!heatjaws] at @s[distance=..2] run summon minecraft:creeper ~ ~1 ~ {Fuse:0,ExplosionRadius:1b}
execute as @e[type=!#ben10:nalive,tag=!heatblast,tag=!heatjaws] at @s[distance=..2] run kill @e[type=minecraft:armor_stand,tag=FireBigShoot,limit=1]
execute as @s[tag=!Sick] run particle minecraft:flame ^ ^1 ^ 0.2 0.2 0.2 0.001 50
execute as @s[tag=Sick] run particle minecraft:soul_fire_flame ^ ^1 ^ 0.2 0.2 0.2 0.001 50
execute as @s unless block ~ ~1 ~ #ben10:passable run summon minecraft:creeper ~ ~1 ~ {Fuse:0,ExplosionRadius:1b}
execute as @s unless block ~ ~1 ~ #ben10:passable run kill @s
execute as @s[scores={shoot=30..}] run kill @s