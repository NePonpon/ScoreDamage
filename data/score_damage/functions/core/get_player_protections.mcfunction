#> score_damage:core/get_player_protections
#
#
#
# @within function score_damage:core/get_default_epf

# 負荷軽減のためにstorageに入れる
    data modify storage score_damage: Inventory set from entity @s Inventory
# プロテクション抽出
    data modify storage score_damage: Protection append from storage score_damage: Inventory[{Slot:103b}].tag.Enchantments[{id:"minecraft:protection"}].lvl
    data modify storage score_damage: Protection append from storage score_damage: Inventory[{Slot:102b}].tag.Enchantments[{id:"minecraft:protection"}].lvl
    data modify storage score_damage: Protection append from storage score_damage: Inventory[{Slot:101b}].tag.Enchantments[{id:"minecraft:protection"}].lvl
    data modify storage score_damage: Protection append from storage score_damage: Inventory[{Slot:100b}].tag.Enchantments[{id:"minecraft:protection"}].lvl
# インベントリ削除
    data remove storage score_damage: Inventory