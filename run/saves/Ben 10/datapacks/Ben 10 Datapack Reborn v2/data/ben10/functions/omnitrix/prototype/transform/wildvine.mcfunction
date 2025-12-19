execute as @s[tag=transform] run function ben10:omnitrix/mc
execute as @s[tag=omnitrix_os,tag=!transform] run function ben10:omnitrix/prototype/transform
execute as @s[tag=omnitrix_os_10k,tag=!transform] run function ben10:omnitrix/os_10k/transform
execute as @s[tag=omnitrix_af,tag=!transform] run function ben10:omnitrix/recalibration/transform
execute as @s[tag=omnitrix_uaf,tag=!transform] run function ben10:omnitrix/ultimatrix/transform
execute as @s[tag=omnitrix_ov,tag=!transform] run function ben10:omnitrix/omniverse/transform

tag @s[tag=!new] add wildvine
execute as @s[scores={update=11}] run tag @s add new

execute as @s[tag=omnitrix_os,tag=!new,predicate=ben10:random/10] run function ben10:omnitrix/prototype/transform/random
execute as @s[tag=omnitrix_os_10k,tag=!new,predicate=ben10:random/10] run function ben10:omnitrix/os_10k/transform/random
execute as @s[tag=omnitrix_af,tag=!new,predicate=ben10:random/10] run function ben10:omnitrix/recalibration/transform/random
execute as @s[tag=omnitrix_uaf,tag=!new,predicate=ben10:random/10] run function ben10:omnitrix/ultimatrix/transform/random
execute as @s[tag=omnitrix_ov,tag=!new,predicate=ben10:random/10] run function ben10:omnitrix/omniverse/transform/random

execute as @s[scores={update=11},tag=wildvine] run scoreboard players add @s update 1
advancement grant @s[tag=wildvine] only ben10:os/wildvine/unlock