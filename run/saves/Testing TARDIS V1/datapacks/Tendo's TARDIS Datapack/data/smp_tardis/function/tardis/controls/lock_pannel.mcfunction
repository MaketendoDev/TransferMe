execute unless entity @a[nbt={Inventory:[{id:"minecraft:gold_nugget",Slot:-106b,components:{"minecraft:custom_name":'"TARDIS Key"'}}]}] run scoreboard players set $key_use tardis 0
execute if entity @a[nbt={Inventory:[{id:"minecraft:gold_nugget",Slot:-106b,components:{"minecraft:custom_name":'"TARDIS Key"'}}]}] run scoreboard players set $key_use tardis 1
execute if score $key_use tardis matches 1 if score $key tardis matches 0 run function smp_tardis:items/tardis_key
execute if score $key_use tardis matches 0 if score $key tardis matches 1 run scoreboard players set $key tardis 0
execute if block 20 6 17 comparator[mode=compare] run scoreboard players set $door_lock tardis 0
execute if block 20 6 17 comparator[mode=subtract] run scoreboard players set $door_lock tardis 1
execute if block 20 6 17 comparator[mode=compare] run fill 21 4 5 19 2 5 air
execute if block 20 6 17 comparator[mode=subtract] run fill 21 4 5 19 2 5 minecraft:stripped_spruce_log[axis= z]