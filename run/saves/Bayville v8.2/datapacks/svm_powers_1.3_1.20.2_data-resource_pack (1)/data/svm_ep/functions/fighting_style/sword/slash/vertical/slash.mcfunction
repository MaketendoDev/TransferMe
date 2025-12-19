execute at @s run summon minecraft:marker ~ ~ ~ {Tags:["svm_ep.sword_slash"]}

tp @e[tag=svm_ep.sword_slash] @s
tp @e[tag=svm_ep.sword_slash] ^ ^-0.26 ^2.315
execute as @e[tag=svm_ep.sword_slash] at @s run tp @s ~ ~ ~ ~-90 ~
execute as @e[tag=svm_ep.sword_slash] at @s run function svm_ep:system/start_random_rotation_y
execute as @e[tag=svm_ep.sword_slash] at @s run function svm_ep:system/get_rotation
execute as @e[tag=svm_ep.sword_slash] at @s run tp @s ~ ~ ~ ~ ~150
execute at @s run playsound minecraft:entity.player.attack.sweep player @a[distance=..30] ~ ~ ~ 0.8 1.3
execute at @e[tag=svm_ep.sword_slash] run function svm_ep:items/sword_slash_particles_wide
kill @e[tag=svm_ep.sword_slash]
execute positioned ^ ^1.5 ^ run function svm_ep:fighting_style/sword/slash/shoot
execute positioned ^ ^0.8 ^ run function svm_ep:fighting_style/sword/slash/shoot
execute positioned ^ ^0.0 ^ run function svm_ep:fighting_style/sword/slash/shoot
execute positioned ^ ^-0.8 ^ run function svm_ep:fighting_style/sword/slash/shoot
execute positioned ^ ^-1.5 ^ run function svm_ep:fighting_style/sword/slash/shoot
