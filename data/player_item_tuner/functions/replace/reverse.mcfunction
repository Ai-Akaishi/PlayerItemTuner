#> player_item_tuner:replace/reverse
# 前から順番に処理できるように反転する
### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

### 反転していれておくよー
data modify storage player_item_tuner:_ items append from storage player_item_tuner: result.items[-1]
data remove storage player_item_tuner: result.items[-1]
execute if data storage player_item_tuner: result.items[-1] run function player_item_tuner:replace/reverse
