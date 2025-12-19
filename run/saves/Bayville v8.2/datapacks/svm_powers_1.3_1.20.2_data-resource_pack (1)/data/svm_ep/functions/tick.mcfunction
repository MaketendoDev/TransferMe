execute as @e[type=item_display,tag=svm_ep.block,tag=!svm_ep.block_set] at @s run function svm_ep:block/set

scoreboard players remove @e[scores={svm_ep.using_move=1..}] svm_ep.using_move 1

tag @e[type=#minecraft:impact_projectiles,tag=!svm_ep.arrow_redirected] add svm_ep.can_redirect
tag @e[scores={svm_ep.projectile=1..},tag=!svm_ep.arrow_redirected] add svm_ep.can_redirect
scoreboard players set @e[type=#minecraft:impact_projectiles] svm_ep.projectile 1


#tag @e[tag=svm_ep.,distance=..3,tag=!svm_ep.arrow_redirected] add svm_ep.can_redirect


execute as @e[tag=svm_ep.npc,tag=!svm_ep.npc_display] at @s run function svm_ep:npc/tick
execute as @e[tag=!svm_ep.power_user,type=#svm_ep:selected,tag=!svm_ep.flora_oak_leaves,tag=!svm_ep.npc] at @s run function svm_ep:selected_tick
execute as @e[scores={svm_ep.fighting_style=1..}] at @s run function svm_ep:fighting_style/tick
execute as @e[tag=svm_ep.power_user] at @s run function svm_ep:power/user_tick
execute as @a at @s run function svm_ep:player_tick


execute as @e[tag=svm_ep.lightning_ready,limit=1,sort=random] at @s run function svm_ep:power/lightning/lightning_place/summon
execute as @e[tag=svm_ep.flora_oak_leaves,limit=6,sort=random] at @s run function svm_ep:power/flora/tree_place/place_leaf2
execute as @e[tag=svm_ep.flora_tree] run function svm_ep:power/flora/tree_place/tick
execute as @e[tag=svm_ep.slime_summoned] at @s run function svm_ep:power/slime/living/tick

execute as @e[scores={svm_ep.p.gravity_punched_normal=1..}] run function svm_ep:power/gravity/punch/punched_normal
execute as @e[scores={svm_ep.p.gravity_punched_reverse=1..}] run function svm_ep:power/gravity/punch/punched_reverse
execute as @e[scores={svm_ep.p.flora_thorned=1..}] run function svm_ep:power/flora/thorned/tick
execute as @e[scores={svm_ep.p.flora_blooming_effect=1..}] run function svm_ep:power/flora/blooming_flash/effect
execute as @e[scores={svm_ep.p.explosion_barrier_effect=1..}] run function svm_ep:power/explosion/barrier/effect
execute as @e[scores={svm_ep.p.fire_on_fire=1..}] run function svm_ep:power/fire/on_fire
scoreboard players remove @e[scores={svm_ep.p.dimension_front_delay=1..}] svm_ep.p.dimension_front_delay 1
execute if entity @e[tag=svm_ep.npc_thunder_god] run bossbar set minecraft:lightning_god visible true
execute unless entity @e[tag=svm_ep.npc_thunder_god] run bossbar set minecraft:lightning_god visible false

execute if score %WORLD_SPEED svm_ep.world_settings matches 0.. run function svm_ep:system/world/speeded_up
execute if score %METEOR_RAIN svm_ep.world_settings matches 0.. run function svm_ep:system/world/meteor_rain

execute as @e[type=item,nbt={Item:{tag:{svm_ep.kill:1b}}}] run kill @s
execute as @e[type=item,nbt={Item:{tag:{svm_ep.unpickable:1b}}}] run data modify entity @s Age set value 150
execute as @e[type=item] unless data entity @s Item run kill @s

scoreboard players add @e[tag=svm_ep.placed_ice] svm_ep.lifetime 1
execute as @e[type=marker,tag=svm_ep.placed_ice,scores={svm_ep.lifetime=80..},limit=50] at @s unless entity @p[distance=..2.5] run function svm_ep:power/ice/berg/destroy_ice

scoreboard players enable @a svm_ep.menu
execute as @a[scores={svm_ep.menu=1..}] run function svm_ep:menu/trigger
scoreboard players remove @e[scores={svm_ep.portal_delay=1..}] svm_ep.portal_delay 1
execute as @a unless entity @s[scores={svm_ep.p.harpie_movement=1}] run clear @s minecraft:elytra{svm_ep.harpie_wings:1b}
execute as @e[type=interaction,tag=svm_ep.click_check] at @s run function svm_ep:system/click_check/hitbox_tick


tag @e[type=item_display,tag=svm_ep.block] remove svm_ep.block_ticked
