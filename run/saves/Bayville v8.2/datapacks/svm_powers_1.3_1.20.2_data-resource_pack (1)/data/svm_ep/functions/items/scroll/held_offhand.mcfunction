tag @s add scroll_offhand
tag @s[tag=!svm_ep.power_user] add powerless
#ADD
execute as @s[tag=powerless] run function svm_ep:power/get_effect
execute as @s[tag=powerless,nbt={Inventory:[{Slot:-106b,tag:{svm_ep.scroll_phase:1b}}]}] run function svm_ep:power/phase/obtain
execute as @s[tag=powerless,nbt={Inventory:[{Slot:-106b,tag:{svm_ep.scroll_lightning:1b}}]}] run function svm_ep:power/lightning/obtain
execute as @s[tag=powerless,nbt={Inventory:[{Slot:-106b,tag:{svm_ep.scroll_flora:1b}}]}] run function svm_ep:power/flora/obtain
execute as @s[tag=powerless,nbt={Inventory:[{Slot:-106b,tag:{svm_ep.scroll_slime:1b}}]}] run function svm_ep:power/slime/obtain
execute as @s[tag=powerless,nbt={Inventory:[{Slot:-106b,tag:{svm_ep.scroll_fire:1b}}]}] run function svm_ep:power/fire/obtain
execute as @s[tag=powerless,nbt={Inventory:[{Slot:-106b,tag:{svm_ep.scroll_explosion:1b}}]}] run function svm_ep:power/explosion/obtain
execute as @s[tag=powerless,nbt={Inventory:[{Slot:-106b,tag:{svm_ep.scroll_harpie:1b}}]}] run function svm_ep:power/harpie/obtain
execute as @s[tag=powerless,nbt={Inventory:[{Slot:-106b,tag:{svm_ep.scroll_dimension_traveler:1b}}]}] run function svm_ep:power/dimension_traveler/obtain
execute as @s[tag=powerless,nbt={Inventory:[{Slot:-106b,tag:{svm_ep.scroll_ice:1b}}]}] run function svm_ep:power/ice/obtain
execute as @s[tag=powerless,nbt={Inventory:[{Slot:-106b,tag:{svm_ep.scroll_gravity:1b}}]}] run function svm_ep:power/gravity/obtain
execute as @s[tag=powerless,nbt={Inventory:[{Slot:-106b,tag:{svm_ep.scroll_fire:1b}}]}] run function svm_ep:power/fire/obtain


#CONSUME
scoreboard players set @s[tag=powerless] svm_ep.dialogue 1
item modify entity @s[tag=powerless] weapon.offhand svm_ep:consume

tag @s remove powerless
tag @s remove scroll_offhand
