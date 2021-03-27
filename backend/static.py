from PyQt5.QtCore import QObject, pyqtSlot


class static_function(QObject):

    @pyqtSlot()
    def exit(self):
        print("exit")
        exit(1)
