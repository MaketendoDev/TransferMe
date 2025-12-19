#select aliens
execute as @s[scores={rightclick=1..},nbt={SelectedItemSlot:8},predicate=!ben10:sneak,nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{Tag:"omnitrix_uaf"}}]}] at @s run playsound minecraft:ultimatrix.activate ambient @a[distance=..8] ~ ~ ~ 0.5 1
execute as @s[tag=!start,tag=!transform,scores={rightclick=1..},nbt={SelectedItemSlot:8},predicate=!ben10:sneak,nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{Tag:"omnitrix_uaf_select"}}]}] at @s run function ben10:omnitrix/ultimatrix/select/select
execute as @s[tag=!select,tag=!stop,tag=!transform,scores={rightclick=1..},nbt={SelectedItemSlot:8},predicate=!ben10:sneak,nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{Tag:"omnitrix_uaf"}}]}] at @s run function ben10:omnitrix/ultimatrix/select/start
execute as @s[tag=!transform,tag=start] at @s run function ben10:omnitrix/ultimatrix/select/start
execute as @s[tag=!transform,tag=select] at @s run function ben10:omnitrix/ultimatrix/select/select
execute as @s[tag=!transform,tag=stop] at @s run function ben10:omnitrix/ultimatrix/select/stoping
execute as @s[tag=!start,tag=!transform,tag=!firsttransform,tag=!omnitrix_uaf_rec,nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{Tag:"omnitrix_uaf_select"}}]},nbt=!{SelectedItemSlot:8}] run function ben10:omnitrix/ultimatrix/select/stoping