from PySide2.QtCore import QObject, Slot


class static_function(QObject):

    @Slot()
    def exit(self):
        print("exit")
        exit(1)
