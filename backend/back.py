from PySide2.QtCore import QObject


class application(QObject):

    x = 0
    y = 0

    def __init__(self):
        QObject.__init__(self)


def input_to_float(object):
    try:
        object = object.replace(",", ".")
        value = float(object)
        return value
    except ValueError:
        pass

def logic(x, y):
    answer = x + y
    return answer