##
 # crossbow.mcfunction
 # 
 #
 # Created by .
##
execute at @e[type= minecraft:item_display , tag=crossbow] run particle minecraft:end_rod ~ ~ ~ 0.3 0.2 0.3 0 2 normal @a[team=peaceful]
schedule function alma_main:any/loop/crossbow 15t