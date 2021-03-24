import sys

from PySide2.QtCore import QUrl
from PySide2.QtQuick import QQuickView
from PySide2.QtWidgets import QApplication
from backend import static, input, output

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

    engine.setSource(QUrl("frontend/main.qml"))
    engine.show()
    app.exec_()
