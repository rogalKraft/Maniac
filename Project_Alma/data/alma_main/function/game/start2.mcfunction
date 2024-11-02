##
 # start2.mcfunction
 # 
 #
 # Created by .
##
#распределение ролей
gamemode adventure @a[tag=player] 
function alma_main:any/loop/crossbow
team join peaceful @a[tag=player]
team join sheriff @r[team=peaceful]
team join murderer @r[team=peaceful]
# уведомлялка о роли
title @a times 20t 20t 20t

title @a[team=murderer] title {"text":"Your role is Murderer","color":"red"}

title @a[team=peaceful] title {"text":"Your role is Peaceful","color":"green"} 

title @a[team=sheriff] title {"text":"Your role is Sheriff","color":"yellow"}

# выдача предметов
# 6779  меч маньяка
item replace entity @a[team=murderer] container.4 with minecraft:iron_sword[custom_model_data= 6779, attribute_modifiers= { modifiers: [ { type: "minecraft:generic.attack_damage" , amount: 10 , slot: hand , operation: add_value , id: "1232"} ] } ]
# 6780 арбалет шерифа
item replace entity @a[team=sheriff] container.4 with minecraft:crossbow[ custom_model_data=6780, charged_projectiles=[ { count: 1 , id:"minecraft:arrow"}], enchantments={ levels: { power: 10 }, show_in_tooltip: false }]

#антураж

effect give @a[team=peaceful] minecraft:darkness infinite 2 true
effect give @a[team=murderer] minecraft:darkness infinite 2 true
effect give @a[team=sheriff] minecraft:darkness infinite 2 true

scoreboard players set @a[team=murderer] mkill 0

tp @a[tag=player] @e[tag=spawn,limit=1]

effect give @a minecraft:saturation 5 5 true
effect give @a minecraft:regeneration 5 5 true