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

    output_default_r = output.output_numeric()
    output_default_i = output.output_numeric()
    output_default_p = output.output_numeric()
    output_default_k_p = output.output_numeric()
    output_default_k_j = output.output_numeric()
    output_default_j = output.output_numeric()

    output_resistor_1 = output.output_numeric()
    output_resistor_2 = output.output_numeric()
    output_resistor_3 = output.output_numeric()
    output_resistor_4 = output.output_numeric()

    context = engine.rootContext()
    context.setContextProperty("static", static)
    context.setContextProperty("input", input_data)
    context.setContextProperty("output_past_list", output_past_list)
    context.setContextProperty("output_corection_method_list", output_corection_method_list)
    context.setContextProperty("output_default_r", output_default_r)
    context.setContextProperty("output_default_i", output_default_i)
    context.setContextProperty("output_default_p", output_default_p)
    context.setContextProperty("output_default_k_p", output_default_k_p)
    context.setContextProperty("output_default_k_j", output_default_k_j)
    context.setContextProperty("output_default_j", output_default_j)
    context.setContextProperty("output_faq", output_faq)
    context.setContextProperty("output_resistor_1", output_resistor_1)
    context.setContextProperty("output_resistor_2", output_resistor_2)
    context.setContextProperty("output_resistor_3", output_resistor_3)
    context.setContextProperty("output_resistor_4", output_resistor_4)

    engine.load(os.path.join(os.path.dirname(__file__), "frontend/main.qml"))

    if not engine.rootObjects():
        sys.exit(-1)

    main_logic_input = {
        "input_data": input_data,
        "output_past_list": output_past_list,
        "output_corection_method_list": output_corection_method_list,
        "output_resistor": {
            "1": output_resistor_1,
            "2": output_resistor_2,
            "3": output_resistor_3,
            "4": output_resistor_4
        },
        "default_value": {
            "r": output_default_r,
            "i": output_default_i,
            "p": output_default_p,
            "k_p": output_default_k_p,
            "k_j": output_default_k_j,
            "j": output_default_j
        }
    }

    timer = QTimer(interval=10)
    timer.timeout.connect(partial(back.main_logic, main_logic_input))
    timer.start()
    sys.exit(app.exec_())
