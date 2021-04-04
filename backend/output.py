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


class output_numeric(back.application):
    signal_float = pyqtSignal(float)

    def __init__(self):
        super(output_numeric, self).__init__()
        self._text = 0

    @pyqtProperty(float, notify=signal_float)
    def text(self):
        return self._text

    @text.setter
    def text(self, h):
        if self._text != h:
            self._text = h
            self.signal_float.emit(h)


class output_list(back.application):
    signal_list = pyqtSignal(list)

    def __init__(self):
        super(output_list, self).__init__()
        self._list = []

    @pyqtProperty(list, notify=signal_list)
    def text(self):
        return self._list

    @text.setter
    def list(self, h):
        if self._list != h:
            self._list = h
            self.signal_list.emit(h)


def faq():
    data = ""
    try:
        file = open(var.path, encoding="utf-8")
        data = file.read()
        file.close()
    except Exception:
        data = "brak FAQ"
    finally:
        return data
