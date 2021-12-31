### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

# 変換前アイテムをセット
data modify storage player_item_tuner: from set from storage player_item_tuner:_ items[-1]
# 変換後アイテムをリセット
data remove storage player_item_tuner: to

# 規定モードなら規定の処理
execute if data storage player_item_tuner: {custom:"default"} run function player_item_tuner:enderchest/modify/default/
# 規定のモードじゃなければカスタム呼び出し
execute unless data storage player_item_tuner: {custom:"default"} run function #player_item_tuner:custom/plugins

# 変換後アイテムが入っていればエンティティにセット
execute if data storage player_item_tuner: to run data modify entity @e[dx=0,tag=PlayerItemTuner,limit=1] HandItems[0] set from storage player_item_tuner: to

# 次へシフト
data remove storage player_item_tuner:_ items[-1]
data modify storage player_item_tuner:_ Slot set from storage player_item_tuner:_ items[-1].Slot
