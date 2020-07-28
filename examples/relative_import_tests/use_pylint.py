# -*- coding: utf-8 -*-
"""
(C) Guangcai Ren <rgc@bvrft.com>
All rights reserved
create time '2020/7/27 19:03'

Usage:
用例 进行debug,因为 命令行的 pylint 无法debug
"""
from os.path import dirname, abspath

from pylint.lint import Run

path = dirname(abspath(__file__))

Run([f'--rcfile={path}/pylint.conf',
     f'{path}/te/sd/b.py'])
