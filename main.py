import os
import sys

from PySide2.QtGui import QGuiApplication, QIcon
from PySide2.QtQml import QQmlApplicationEngine

from backend import input, output, static

if __name__ == "__main__":
    app = QGuiApplication(sys.argv)
    app.setWindowIcon(QIcon("frontend/files/icon.png"))
    engine = QQmlApplicationEngine()

    static = static.static_function()
    input_data = input.input_data()
    output_data = output.output_data()

    context = engine.rootContext()
    context.setContextProperty("static", static)
    context.setContextProperty("input", input_data)
    context.setContextProperty("output", output_data)

    engine.load(os.path.join(os.path.dirname(__file__), "frontend/main.qml"))

    if not engine.rootObjects():
        sys.exit(-1)
    sys.exit(app.exec_())
