from PyQt5.QtCore import QObject, pyqtSignal, pyqtSlot, pyqtProperty

import var
from backend import back


class output_faq(back.application):
    test_signal = pyqtSignal()

    def __init__(self):
        QObject.__init__(self)

    @pyqtSlot(result=str)
    def faq_text(self):
        return faq()


class output_data(back.application):
    signal = pyqtSignal(float)

    def __init__(self):
        super(output_data, self).__init__()
        self._text = 10

    @pyqtProperty(float, notify=signal)
    def text(self):
        return self._text

    @text.setter
    def text(self, h):
        if self._text != h:
            self._text = h
            self.signal.emit(h)


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
