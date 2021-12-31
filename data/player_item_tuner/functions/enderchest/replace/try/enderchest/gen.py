#!/usr/bin/env python
# -*- coding: utf-8 -*-

import codecs

for i in range(36):
    with codecs.open(os.path.join(os.path.dirname(__file__), str(i) + '.mcfunction'), 'w', 'utf_8') as f:
        command = '''
### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage player_item_tuner:_ Slot set value ''' + str(i) + '''b
function player_item_tuner:enderchest/replace/try/common
execute if data storage player_item_tuner: to run item replace entity @s enderchest.''' + str(i) + ''' from entity @e[dx=0,tag=PlayerItemTuner,limit=1] weapon.mainhand'''
        f.write(command)
