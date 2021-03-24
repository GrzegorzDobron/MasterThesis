import sys
import time

from PySide2.QtCore import QUrl, Slot
from PySide2.QtQuick import QQuickView
from PySide2.QtWidgets import QApplication

from backend import input, output, static, back

x1 = 0
x2 = 0
sum = 0


@Slot("QString")
def read2(text):
    value = back.to_int(text)
    if type(value) == float:
        print(value)


if __name__ == "__main__":
    app = QApplication(sys.argv)
    engine = QQuickView()

    static = static.static_function()
    input_data = input.input_data()
    output_data = output.output_data()

    context = engine.rootContext()
    context.setContextProperty("static", static)
    context.setContextProperty("input", input_data)
    context.setContextProperty("output", output_data)
    context.setContextProperty("test", read2)

    engine.setSource(QUrl("frontend/main.qml"))
    engine.show()
    app.exec_()
