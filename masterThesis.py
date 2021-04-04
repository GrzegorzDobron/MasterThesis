# -*- coding: utf-8 -*-
import os
import sys
from functools import partial

from PyQt5.QtCore import QTimer
from PyQt5.QtGui import QGuiApplication
from PyQt5.QtQml import QQmlApplicationEngine

from backend import static, input, output, back

if __name__ == "__main__":
    app = QGuiApplication(sys.argv)
    engine = QQmlApplicationEngine()

    global_logic = back.application()
    static = static.static_function()
    input_data = input.input_data()
    output_past_list = output.output_list()
    output_corection_method_list = output.output_list()
    output_faq = output.output_faq()

    output_test = output.output_numeric()

    context = engine.rootContext()
    context.setContextProperty("static", static)
    context.setContextProperty("input", input_data)
    context.setContextProperty("output_past_list", output_past_list)
    context.setContextProperty("output_corection_method_list", output_corection_method_list)
    context.setContextProperty("output_faq", output_faq)

    context.setContextProperty("output_test", output_test)

    engine.load(os.path.join(os.path.dirname(__file__), "frontend/main.qml"))

    if not engine.rootObjects():
        sys.exit(-1)

    timer = QTimer(interval=10)
    timer.timeout.connect(partial(back.main_logic,
                                  input_data,
                                  output_past_list,
                                  output_corection_method_list,
                                  output_test))
    timer.start()
    sys.exit(app.exec_())
