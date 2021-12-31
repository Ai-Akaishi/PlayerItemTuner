### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

# スロットチェック
execute store result storage player_item_tuner:_ mismatch byte 1 run data modify storage player_item_tuner:_ Slot set from storage player_item_tuner:_ items[-1].Slot
execute unless data storage player_item_tuner:_ items[0] run data modify storage player_item_tuner:_ mismatch set value true

data remove storage player_item_tuner: to
# 不一致ならresult.fillに設定
execute if data storage player_item_tuner:_ {mismatch:true} run data modify storage player_item_tuner: to set from storage player_item_tuner: result.fill
# 一致ならresult.item[-1]に設定
execute if data storage player_item_tuner:_ {mismatch:false} run data modify storage player_item_tuner: to set from storage player_item_tuner:_ items[-1]
execute if data storage player_item_tuner:_ {mismatch:false} run execute if data storage player_item_tuner: to run data remove storage player_item_tuner:_ items[-1]

# 変換後アイテムが入っていればエンティティにセット
execute if data storage player_item_tuner: to run data modify entity @e[dx=0,tag=PlayerItemTuner,limit=1] HandItems[0] set from storage player_item_tuner: to
