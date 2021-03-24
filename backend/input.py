from PySide2.QtCore import QObject, Slot
from backend import back

class input_data(back.application):

    def __init__(self):
        QObject.__init__(self)

    @Slot("QString")
    def read1(self, text):
        value = back.input_to_float(text)
        if type(value) == float:
            print(value)
            self.x = value
            print("x=" + str(self.x))

    @Slot("QString")
    def read2(self, text):
        value = back.input_to_float(text)
        if type(value) == float:
            print(value)
            self.y = value
            print("y=" + str(self.y))
