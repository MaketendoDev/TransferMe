execute as @s[nbt={SelectedItem:{id:"minecraft:redstone_block"}}] run particle minecraft:dust 1 0.1 0.1 1 ~ ~1 ~ 0.4 0.4 0.4 1 10
execute as @s[nbt={SelectedItem:{id:"minecraft:redstone_block"}}] run scoreboard players add @s feedback 10
execute as @s[nbt={SelectedItem:{id:"minecraft:redstone_block"}}] run clear @s minecraft:redstone_block 1
#redstone
execute as @s[nbt={SelectedItem:{id:"minecraft:redstone"}}] run particle minecraft:dust 1 0.1 0.1 1 ~ ~1 ~ 0.4 0.4 0.4 1 1
execute as @s[nbt={SelectedItem:{id:"minecraft:redstone"}}] run scoreboard players add @s feedback 1
execute as @s[nbt={SelectedItem:{id:"minecraft:redstone"}}] run clear @s minecraft:redstone 1
#redstone torch
execute as @s[nbt={SelectedItem:{id:"minecraft:redstone_torch"}}] run particle minecraft:dust 1 0.1 0.1 1 ~ ~1 ~ 0.4 0.4 0.4 1 5
execute as @s[nbt={SelectedItem:{id:"minecraft:redstone_torch"}}] run give @s minecraft:stick 1
execute as @s[nbt={SelectedItem:{id:"minecraft:redstone_torch"}}] run scoreboard players add @s feedback 5
execute as @s[nbt={SelectedItem:{id:"minecraft:redstone_torch"}}] run clear @s minecraft:redstone_torch 1
#beacon
execute as @s[nbt={SelectedItem:{id:"minecraft:beacon"}}] run particle minecraft:dust 0.1 1 1 1 ~ ~1 ~ 0.4 0.4 0.4 1 50
execute as @s[nbt={SelectedItem:{id:"minecraft:beacon"}}] run scoreboard players add @s feedback 250
execute as @s[nbt={SelectedItem:{id:"minecraft:beacon"}}] run clear @s minecraft:beacon 1

playsound minecraft:block.beacon.power_select ambient @a[distance=..10] ~ ~ ~ 1 2