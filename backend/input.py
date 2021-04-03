from PyQt5.QtCore import QObject, pyqtSlot
from backend import back


class input_data(back.application):

    def __init__(self):
        QObject.__init__(self)

    @pyqtSlot("QString")
    def read1(self, text):
        value = back.input_to_float(text)
        if type(value) == float:
            print(value)
            self.x = value
            print("x=" + str(self.x))
        else:
            self.x = 0

    @pyqtSlot("QString")
    def read2(self, text):
        value = back.input_to_float(text)
        if type(value) == float:
            print(value)
            self.y = value
            print("y=" + str(self.y))
        else:
            self.y = 0
