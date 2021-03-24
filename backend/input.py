from PySide2.QtCore import QObject, Slot

from backend import back


class input_data(QObject):

    def __init__(self):
        QObject.__init__(self)

    @Slot("QString")
    def read1(self, text):
        value = back.to_int(text)
        if type(value) == float:
            print(value)
            return value

    @Slot("QString")
    def read2(self, text):
        value = back.to_int(text)
        if type(value) == float:
            print(value)
            return value
