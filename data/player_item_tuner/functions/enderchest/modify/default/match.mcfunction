### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

## storage player_item_tuner: from に元のアイテムが入っている
## storage player_item_tuner: to にアイテムを入れる

## setがない時用
data modify storage player_item_tuner: to set from storage player_item_tuner: from
## setがある時用
data modify storage player_item_tuner: to set from storage player_item_tuner: result.set
execute unless data storage player_item_tuner: to.id run data modify storage player_item_tuner: to.id set from storage player_item_tuner: from.id
execute unless data storage player_item_tuner: to.Count run data modify storage player_item_tuner: to.Count set from storage player_item_tuner: from.Count
## mergeがある時用
data modify storage player_item_tuner: to merge from storage player_item_tuner: result.merge
