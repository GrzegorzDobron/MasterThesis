from PySide2.QtCore import QObject, Signal, Slot
from backend import back
import var


class output_data(back.application):
    test_signal = Signal()

    def __init__(self):
        QObject.__init__(self)

    def text(self):
        self.answer = "texgtfdt"
        return self.answer

    @Slot(result=str)
    def test_out(self):
        text = back.logic(self.x, self.y)
        print("wynik=" + str(text))
        return text

    @Slot(result=str)
    def faq_text(self):
        return back.faq()
