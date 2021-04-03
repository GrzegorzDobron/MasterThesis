# -*- coding: utf-8 -*-

from PyQt5.QtCore import QObject
import var


def main_logic(output, input):
    wynik = input.x + input.y
    output.text = wynik


class application(QObject):
    x = 0
    y = 0

    pastes_list = []


    def __init__(self):
        QObject.__init__(self)


def input_to_float(inside):
    try:
        inside = inside.replace(",", ".")
        value = float(inside)
        return value
    except ValueError:
        pass


