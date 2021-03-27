from PyQt5.QtCore import QObject, pyqtSignal, pyqtSlot

from backend import back


class output_data(back.application):
    test_signal = pyqtSignal()

    def __init__(self):
        QObject.__init__(self)
        self.answer = "texgtfdt"

    def text(self):
        return self.answer

    @pyqtSlot(result=str)
    def test_out(self):
        text = back.logic(self.x, self.y)
        print("wynik=" + str(text))
        return text

    @pyqtSlot(result=str)
    def faq_text(self):
        return back.faq()
