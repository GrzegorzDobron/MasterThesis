# -*- coding: utf-8 -*-
import os
import sys

from PyQt5 import QtCore
from PyQt5.QtCore import QTimer, pyqtProperty
from PyQt5.QtGui import QGuiApplication
from PyQt5.QtQml import QQmlApplicationEngine

from functools import partial

from backend import static, input, output, back

if __name__ == "__main__":
    app = QGuiApplication(sys.argv)
    engine = QQmlApplicationEngine()

    global_logic = back.application()
    static = static.static_function()
    input_data = input.input_data()
    output_data = output.output_data()
    output_faq = output.output_faq()

    context = engine.rootContext()
    context.setContextProperty("static", static)
    context.setContextProperty("input", input_data)
    context.setContextProperty("output", output_data)
    context.setContextProperty("output_faq", output_faq)

    engine.load(os.path.join(os.path.dirname(__file__), "frontend/main.qml"))

    if not engine.rootObjects():
        sys.exit(-1)

    timer = QTimer(interval=10)
    timer.timeout.connect(partial(back.main_logic, output_data, input_data))
    timer.start()
    sys.exit(app.exec_())
