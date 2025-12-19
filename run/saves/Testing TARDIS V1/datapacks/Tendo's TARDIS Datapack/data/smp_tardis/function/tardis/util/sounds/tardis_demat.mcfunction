execute if score $demat_sound loop matches 1 run scoreboard players add $demat_sound_count loop 1
execute as @e[name=Rotor,limit=1] at @s run execute if score $demat_sound_count loop matches 100.. run playsound minecraft:entity.blaze.ambient ambient @a[tag=Inside] ~ ~ ~ 2 .5
execute as @e[name=Rotor,limit=1] at @s run execute if score $demat_sound_count loop matches 100.. run playsound minecraft:entity.blaze.ambient ambient @a[tag=Inside] ~ ~ ~ 2 .5
execute as @e[tag=TARDIS,limit=1] at @s run execute if score $demat_sound_count loop matches 100.. run playsound minecraft:entity.blaze.ambient ambient @a ~ ~ ~ 2 .5
execute as @e[tag=TARDIS,limit=1] at @s run execute if score $demat_sound_count loop matches 100.. run playsound minecraft:entity.blaze.ambient ambient @a ~ ~ ~ 2 .5
execute if score $demat_sound_count loop matches 100.. run scoreboard players set $demat_sound_count loop 0