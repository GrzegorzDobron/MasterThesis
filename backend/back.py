# -*- coding: utf-8 -*-

from PyQt5.QtCore import QObject
import var


def main_logic(output, input):

    output.text = input.x


class application(QObject):
    x = 0
    y = 0

    def __init__(self):
        QObject.__init__(self)


def input_to_float(inside):
    try:
        inside = inside.replace(",", ".")
        value = float(inside)
        return value
    except ValueError:
        pass


