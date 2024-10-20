##
 # murderer.mcfunction
 # 
 #
 # Created by .
##
execute if entity @a[team= murderer , scores={rollback=1..}] run function alma_main:roles/itemrolback/30
scoreboard players set @a[team=murderer] rollback 0