##
 # r_crossbow.mcfunction
 # 
 #
 # Created by .
##
scoreboard players set @s crossbowpikup 0 
team join sheriff @s
item replace entity @a[team=sheriff] container.4 with minecraft:crossbow[ custom_model_data=6780, charged_projectiles=[ { count: 1 , id:"minecraft:arrow"}], enchantments={ levels: { power: 10 }, show_in_tooltip: false }]
execute at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 10 1 1
kill @e[tag=crossbow]