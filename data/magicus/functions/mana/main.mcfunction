#######
# Compiled from magicus/functions/mana/main.mcscript
# to .local/share/multimc/instances/1.13.1/.minecraft/saves/maggi2/datapacks/magicus/data/magicus/functions/mana/main.mcfunction
#
# Generated by Minecraft Script for 1.13
######
scoreboard players add @a manaID 0
execute as @r[scores={manaID=0}] run tag @s add manaGiveID
execute as @a[tag=manaGiveID] run scoreboard players add manaIDCounter manaID 1
execute as @a[tag=manaGiveID] run scoreboard players operation @s manaID = manaIDCounter manaID
execute as @a[tag=manaGiveID] run scoreboard players set @s manaCount 1000
execute as @a[tag=manaGiveID] run tag @s remove manaGiveID
execute as @a if score @s manaCount > @s manaMax run scoreboard players operation @s manaCount = @s manaMax
execute as @a if score @s manaCount matches ..-1 run scoreboard players set @s manaCount 0
execute if entity @a[scores={manaID=1}] run bossbar set magicus:mana_player_1 players @a[scores={manaID=1}]
execute if entity @a[scores={manaID=1}] store result bossbar magicus:mana_player_1 value run scoreboard players get @a[limit=1,scores={manaID=1}] manaCount
execute if entity @a[scores={manaID=1}] store result bossbar magicus:mana_player_1 max run scoreboard players get @a[limit=1,scores={manaID=1}] manaMax
execute if score manaIDCounter manaID matches 2.. run function magicus:mana/fix0
execute if score manaIDCounter manaID matches 101.. run function magicus:mana/fix1
execute if score manaIDCounter manaID matches 1001.. run function magicus:mana/fix2
