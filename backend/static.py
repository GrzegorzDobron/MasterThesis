from PyQt5.QtCore import QObject, pyqtSlot


class static_function(QObject):

    @pyqtSlot()
    def exit(self):
        print("exit")
        exit(1)

def input_to_float(inside):
    try:
        inside = inside.replace(",", ".")
        value = float(inside)
        return value
    except ValueError:
        pass