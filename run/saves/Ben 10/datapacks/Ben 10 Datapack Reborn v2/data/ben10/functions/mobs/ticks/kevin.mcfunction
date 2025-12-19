effect give @s invisibility 1 0 true
effect give @s[tag=smash] minecraft:slowness 1 255 true
effect give @s minecraft:fire_resistance 1 1 true

scoreboard players add @s shoot 1
execute as @s[scores={shoot=100..}] at @s if entity @e[tag=!Kevin,distance=..20] run function ben10:abilities/kevin
execute as @s[scores={shoot=100..}] run scoreboard players reset @s shoot
execute as @s unless block ~ ~1 ~ #ben10:passable run tp @s ~ ~1 ~
#double shoot
scoreboard players add @s[tag=Double] Kevin_Double 1
execute as @s[scores={Kevin_Double=1}] facing entity @p[gamemode=!creative,gamemode=!spectator] feet run function ben10:abilities/slime_shoot
execute as @s[scores={Kevin_Double=10}] facing entity @p[gamemode=!creative,gamemode=!spectator] feet run function ben10:abilities/fire_shoot
execute as @s[scores={Kevin_Double=10}] run tag @s add attack
execute as @s[scores={Kevin_Double=10..}] run tag @s remove Double
execute as @s[scores={Kevin_Double=10..}] run scoreboard players reset @s Kevin_Double
#smash
scoreboard players add @s[tag=smash] Smash 1
execute as @s[tag=smash,scores={Smash=9}] at @s run playsound minecraft:entity.generic.explode ambient @a[distance=..20] ~ ~ ~ 1 0
execute as @s[tag=smash,scores={Smash=9}] at @s run particle minecraft:explosion ~ ~0.1 ~ 1 0 1 0 10
execute as @s[tag=smash,scores={Smash=9}] at @s run effect give @e[distance=..7,tag=!Kevin,type=#ben10:undead] instant_health 1 1 true
execute as @s[tag=smash,scores={Smash=9}] at @s run effect give @e[distance=..7,type=!#ben10:undead,type=!player] instant_damage 1 2 true
execute as @s[tag=smash,scores={Smash=9}] at @s run effect give @e[distance=..7,type=player] instant_damage 1 1 true
execute as @s[scores={Smash=18..}] at @s run tag @s remove smash
execute as @s[scores={Smash=18..}] at @s run scoreboard players reset @s Smash

execute as @s[tag=attack] run scoreboard players add @s attack 1
execute as @s[tag=attack,scores={attack=10..}] run tag @s remove attack
execute as @s[scores={attack=10..}] run scoreboard players reset @s attack

execute as @s[tag=attack2] run scoreboard players add @s attack2 1
execute as @s[tag=attack2,scores={attack2=10..}] run tag @s remove attack2
execute as @s[scores={attack2=10..}] run scoreboard players reset @s attack2

execute store result score @s MHealth run data get entity @s Health
execute as @s[scores={MHealth=..20}] at @s run summon minecraft:experience_orb ~ ~ ~1 {Value:20}
execute as @s[scores={MHealth=..20}] at @s run summon minecraft:experience_orb ~1 ~ ~ {Value:50}
execute as @s[scores={MHealth=..20}] at @s run summon minecraft:experience_orb ~ ~ ~-1 {Value:20}
execute as @s[scores={MHealth=..20}] at @s run summon minecraft:experience_orb ~1 ~ ~ {Value:50}
execute as @s[scores={MHealth=..20}] at @s run summon minecraft:experience_orb ~ ~1 ~ {Value:20}
execute as @s[scores={MHealth=..20}] at @s run summon minecraft:experience_orb ~ ~ ~1 {Value:10}
execute as @s[scores={MHealth=..20}] at @s run summon minecraft:experience_orb ~1 ~ ~ {Value:40}
execute as @s[scores={MHealth=..20}] at @s run summon minecraft:experience_orb ~ ~ ~1 {Value:30}
execute as @s[scores={MHealth=..20}] at @s run particle minecraft:smoke ~ ~0.9 ~ 1 1 1 0.01 500
execute as @s[scores={MHealth=..20}] at @s run tp @s ~ ~-500 ~
execute as @s[scores={MHealth=..20}] at @s run kill @s

#normal
item replace entity @s[tag=!smash,tag=!attack,tag=!attack2,nbt={HurtTime:0s},nbt={Motion:[0.0d,0.0d,0.0d,0.0d]}] armor.head with carrot_on_a_stick{display:{Name:"{\"text\":\"Kevin\"}"},Tag:alien,CustomModelData:9543} 1
item replace entity @s[tag=!smash,tag=!attack,tag=!attack2,nbt={HurtTime:0s},nbt=!{Motion:[0.0d,0.0d,0.0d,0.0d]}] armor.head with carrot_on_a_stick{display:{Name:"{\"text\":\"Kevin\"}"},Tag:alien,CustomModelData:9544} 1

item replace entity @s[tag=attack,nbt={HurtTime:0s}] armor.head with carrot_on_a_stick{display:{Name:"{\"text\":\"Kevin\"}"},Tag:alien,CustomModelData:9545} 1
item replace entity @s[tag=attack2,nbt={HurtTime:0s}] armor.head with carrot_on_a_stick{display:{Name:"{\"text\":\"Kevin\"}"},Tag:alien,CustomModelData:9546} 1

item replace entity @s[tag=smash,scores={Smash=..8},nbt={HurtTime:0s}] armor.head with carrot_on_a_stick{display:{Name:"{\"text\":\"Kevin\"}"},Tag:alien,CustomModelData:9547} 1
item replace entity @s[tag=smash,scores={Smash=8..},nbt={HurtTime:0s}] armor.head with carrot_on_a_stick{display:{Name:"{\"text\":\"Kevin\"}"},Tag:alien,CustomModelData:9548} 1