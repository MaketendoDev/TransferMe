execute if predicate svm_ep:chance/33_percent if block ~ ~ ~ minecraft:magma_block run setblock ~ ~ ~ air

execute if block ~ ~ ~ #svm_ep:no_physical_hitbox run function svm_ep:break_block
execute if block ~ ~ ~ #minecraft:leaves run function svm_ep:break_block

execute unless block ~ ~ ~ #svm_ep:no_physical_hitbox unless block ~ ~ ~ #minecraft:ice unless block ~ ~ ~ #svm_ep:indestructable unless block ~ ~ ~ minecraft:fire run setblock ~ ~ ~ magma_block


execute if block ~ ~ ~ water run setblock ~ ~ ~ air
execute if block ~ ~ ~ ice run setblock ~ ~ ~ water
execute if block ~ ~ ~ packed_ice run setblock ~ ~ ~ ice
execute if block ~ ~ ~ blue_ice run setblock ~ ~ ~ packed_ice


