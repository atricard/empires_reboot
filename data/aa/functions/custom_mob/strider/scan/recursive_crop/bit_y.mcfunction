# y.mcfunction
scoreboard players set $z crop_scan 0
function aa:custom_mob/strider/scan/recursive_crop/bit_z
scoreboard players add $y crop_scan 1
execute if score $y crop_scan matches 0..10 positioned ~ ~1 ~ run function aa:custom_mob/strider/scan/recursive_crop/bit_y