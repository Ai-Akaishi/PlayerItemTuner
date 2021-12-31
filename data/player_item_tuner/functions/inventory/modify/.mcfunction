### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

# if指定がなければ空指定とする
execute unless data storage player_item_tuner: condition.if run data modify storage player_item_tuner: condition.if set value {}
# モード指定がなければdefault指定とする
execute unless data storage player_item_tuner: custom run data modify storage player_item_tuner: custom set value "default"

# エンティティ召喚
summon minecraft:armor_stand ~0.1 ~0.1 ~0.1 {Marker:true,Invisible:true,Tags:[PlayerItemTuner]}
# 初期値取得
data modify storage player_item_tuner:_ items set from entity @s Inventory
data modify storage player_item_tuner:_ Slot set from storage player_item_tuner:_ items[-1].Slot
# それぞれのスロットを確認
execute if data storage player_item_tuner:_ {Slot:-106b} run function player_item_tuner:inventory/modify/try/armor/offhand
execute if data storage player_item_tuner:_ {Slot:103b} run function player_item_tuner:inventory/modify/try/armor/head
execute if data storage player_item_tuner:_ {Slot:102b} run function player_item_tuner:inventory/modify/try/armor/chest
execute if data storage player_item_tuner:_ {Slot:101b} run function player_item_tuner:inventory/modify/try/armor/legs
execute if data storage player_item_tuner:_ {Slot:100b} run function player_item_tuner:inventory/modify/try/armor/feet
execute if data storage player_item_tuner:_ {Slot:35b} run function player_item_tuner:inventory/modify/try/inventory/35
execute if data storage player_item_tuner:_ {Slot:34b} run function player_item_tuner:inventory/modify/try/inventory/34
execute if data storage player_item_tuner:_ {Slot:33b} run function player_item_tuner:inventory/modify/try/inventory/33
execute if data storage player_item_tuner:_ {Slot:32b} run function player_item_tuner:inventory/modify/try/inventory/32
execute if data storage player_item_tuner:_ {Slot:31b} run function player_item_tuner:inventory/modify/try/inventory/31
execute if data storage player_item_tuner:_ {Slot:30b} run function player_item_tuner:inventory/modify/try/inventory/30
execute if data storage player_item_tuner:_ {Slot:29b} run function player_item_tuner:inventory/modify/try/inventory/29
execute if data storage player_item_tuner:_ {Slot:28b} run function player_item_tuner:inventory/modify/try/inventory/28
execute if data storage player_item_tuner:_ {Slot:27b} run function player_item_tuner:inventory/modify/try/inventory/27
execute if data storage player_item_tuner:_ {Slot:26b} run function player_item_tuner:inventory/modify/try/inventory/26
execute if data storage player_item_tuner:_ {Slot:25b} run function player_item_tuner:inventory/modify/try/inventory/25
execute if data storage player_item_tuner:_ {Slot:24b} run function player_item_tuner:inventory/modify/try/inventory/24
execute if data storage player_item_tuner:_ {Slot:23b} run function player_item_tuner:inventory/modify/try/inventory/23
execute if data storage player_item_tuner:_ {Slot:22b} run function player_item_tuner:inventory/modify/try/inventory/22
execute if data storage player_item_tuner:_ {Slot:21b} run function player_item_tuner:inventory/modify/try/inventory/21
execute if data storage player_item_tuner:_ {Slot:20b} run function player_item_tuner:inventory/modify/try/inventory/20
execute if data storage player_item_tuner:_ {Slot:19b} run function player_item_tuner:inventory/modify/try/inventory/19
execute if data storage player_item_tuner:_ {Slot:18b} run function player_item_tuner:inventory/modify/try/inventory/18
execute if data storage player_item_tuner:_ {Slot:17b} run function player_item_tuner:inventory/modify/try/inventory/17
execute if data storage player_item_tuner:_ {Slot:16b} run function player_item_tuner:inventory/modify/try/inventory/16
execute if data storage player_item_tuner:_ {Slot:15b} run function player_item_tuner:inventory/modify/try/inventory/15
execute if data storage player_item_tuner:_ {Slot:14b} run function player_item_tuner:inventory/modify/try/inventory/14
execute if data storage player_item_tuner:_ {Slot:13b} run function player_item_tuner:inventory/modify/try/inventory/13
execute if data storage player_item_tuner:_ {Slot:12b} run function player_item_tuner:inventory/modify/try/inventory/12
execute if data storage player_item_tuner:_ {Slot:11b} run function player_item_tuner:inventory/modify/try/inventory/11
execute if data storage player_item_tuner:_ {Slot:10b} run function player_item_tuner:inventory/modify/try/inventory/10
execute if data storage player_item_tuner:_ {Slot:9b} run function player_item_tuner:inventory/modify/try/inventory/9
execute if data storage player_item_tuner:_ {Slot:8b} run function player_item_tuner:inventory/modify/try/inventory/8
execute if data storage player_item_tuner:_ {Slot:7b} run function player_item_tuner:inventory/modify/try/inventory/7
execute if data storage player_item_tuner:_ {Slot:6b} run function player_item_tuner:inventory/modify/try/inventory/6
execute if data storage player_item_tuner:_ {Slot:5b} run function player_item_tuner:inventory/modify/try/inventory/5
execute if data storage player_item_tuner:_ {Slot:4b} run function player_item_tuner:inventory/modify/try/inventory/4
execute if data storage player_item_tuner:_ {Slot:3b} run function player_item_tuner:inventory/modify/try/inventory/3
execute if data storage player_item_tuner:_ {Slot:2b} run function player_item_tuner:inventory/modify/try/inventory/2
execute if data storage player_item_tuner:_ {Slot:1b} run function player_item_tuner:inventory/modify/try/inventory/1
execute if data storage player_item_tuner:_ {Slot:0b} run function player_item_tuner:inventory/modify/try/inventory/0
# エンティティ削除
kill @e[dx=0,tag=PlayerItemTuner]
# ストレージリセット
data remove storage player_item_tuner: condition
data remove storage player_item_tuner: result
data remove storage player_item_tuner: custom
