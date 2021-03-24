from PySide2.QtCore import QObject, Signal, Property, QStringListModel, Slot


class output_data(QObject):
    test_signal = Signal()

    def __init__(self):
        QObject.__init__(self)

    def text(self):
        self.answer = "texgtfdt"
        return self.answer

    @Slot(result=str)
    def test_out(self):
        return "sum"
