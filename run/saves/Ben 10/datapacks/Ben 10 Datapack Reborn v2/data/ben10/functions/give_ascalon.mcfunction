kill @e[type=item,nbt={Item:{id:"minecraft:emerald_block",Count:1b}},distance=..3,limit=1,sort=nearest]
kill @e[type=item,nbt={Item:{id:"minecraft:iron_ingot",Count:4b}},distance=..3,limit=1,sort=nearest]
kill @e[type=item,nbt={Item:{id:"minecraft:netherite_ingot",Count:1b}},distance=..3,limit=1,sort=nearest]
kill @e[tag=Hover,distance=..2]
particle minecraft:dust 0 1 0 1 ~ ~0.1 ~ 0.2 0.2 0.2 1 100 force
summon minecraft:item ~ ~0.2 ~ {Item:{id:"minecraft:netherite_sword",Count:1b,tag:{Unbreakable:1b,CustomModelData:8000,Tag:ascalon,display:{Name:'{"text":"Ascalon","color":"blue","italic":false}',Lore:['{"text":"F to suit up"}']}}}}
playsound entity.zombie.infect master @a[distance=..12] ~ ~ ~ 1 1 1