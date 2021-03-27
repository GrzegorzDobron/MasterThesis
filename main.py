# -*- coding: utf-8 -*-
import os
import sys
from PySide2.QtCore import QUrl
from PySide2.QtGui import QGuiApplication
from PySide2.QtQml import QQmlApplicationEngine
from PySide2.QtQuick import QQuickView
from PySide2.QtWidgets import QApplication
from backend import static, input, output, back

if __name__ == "__main__":
    app = QGuiApplication(sys.argv)
    engine = QQmlApplicationEngine()

    static = static.static_function()
    input_data = input.input_data()
    output_data = output.output_data()

    back.faq()
    context = engine.rootContext()
    context.setContextProperty("static", static)
    context.setContextProperty("input", input_data)
    context.setContextProperty("output", output_data)

    engine.load(os.path.join(os.path.dirname(__file__), "frontend/main.qml"))

    if not engine.rootObjects():
        sys.exit(-1)
    sys.exit(app.exec_())
