# -*- coding: utf-8 -*-

from PyQt5.QtCore import QObject
import var


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


def logic(x, y):
    answer = x + y
    return answer


def faq():
    data = ""
    try:
        file = open(var.path)
        data = file.read()
        file.close()
    except Exception:
        data = "brak FAQ"
    finally:
        return data
