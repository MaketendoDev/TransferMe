kill @e[type=item,nbt={Item:{id:"minecraft:redstone_block",Count:1b}},distance=..2,limit=1,sort=nearest]
kill @e[type=item,nbt={Item:{id:"minecraft:iron_block",Count:1b}},distance=..2,limit=1,sort=nearest]
kill @e[type=item,nbt={Item:{id:"minecraft:blue_dye",Count:1b}},distance=..2,limit=1,sort=nearest]
particle minecraft:sweep_attack ~ ~0.1 ~ 0.2 0.2 0.2 1 20 force
summon minecraft:item ~ ~0.2 ~ {Item:{id:"minecraft:blue_dye",Count:1b,tag:{Tag:omnitrix_asdm,display:{Name:'{"text":"Anti virus","color":"orange","italic":false}'}}}}
playsound entity.zombie.infect master @a[distance=..12] ~ ~ ~ 1 1 1