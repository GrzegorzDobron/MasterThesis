# -*- coding: utf-8 -*-
import os
import sys
from functools import partial

from PyQt5.QtCore import QTimer
from PyQt5.QtGui import QGuiApplication
from PyQt5.QtQml import QQmlApplicationEngine

import backend
from backend import input, output, back, static

if __name__ == "__main__":

    app = QGuiApplication(sys.argv)
    engine = QQmlApplicationEngine()

    static = static.static_function()
    input_resistor_data = input.input_resistor_data()
    input_capacitor_data = input.input_capacitor_data()
    input_new_paste = input.input_new_paste()
    output_past_list = output.output_list()
    output_past_list_dielectric = output.output_list()
    output_new_past_types = output.output_list()
    output_manufactoring_method_list = output.output_list()
    output_faq = output.output_faq()

    output_resistor_default_r = output.output_numeric()
    output_resistor_default_i = output.output_numeric()
    output_resistor_default_p = output.output_numeric()
    output_resistor_default_k_p = output.output_numeric()
    output_resistor_default_korekta = output.output_numeric()
    output_resistor_default_j = output.output_numeric()

    output_capacitor_default_c = output.output_numeric()
    output_capacitor_default_n = output.output_numeric()
    output_capacitor_default_d0 = output.output_numeric()

    output_resistor_1 = output.output_numeric()
    output_resistor_2 = output.output_numeric()
    output_resistor_3 = output.output_numeric()
    output_resistor_4 = output.output_numeric()
    output_resistor_5 = output.output_numeric()
    output_resistor_6 = output.output_numeric()
    output_resistor_7 = output.output_numeric()

    output_capacitor_1 = output.output_numeric()
    output_capacitor_2 = output.output_numeric()
    output_capacitor_3 = output.output_numeric()
    output_capacitor_4 = output.output_numeric()

    context = engine.rootContext()
    context.setContextProperty("static", static)
    context.setContextProperty("input_resistor", input_resistor_data)
    context.setContextProperty("input_capacitor", input_capacitor_data)
    context.setContextProperty("input_new_paste", input_new_paste)

    context.setContextProperty("output_past_list", output_past_list)
    context.setContextProperty("output_past_list_dielectric", output_past_list_dielectric)
    context.setContextProperty("output_manufactoring_method_list", output_manufactoring_method_list)
    context.setContextProperty("output_new_past_types", output_new_past_types)

    context.setContextProperty("output_resistor_default_r",          output_resistor_default_r)
    context.setContextProperty("output_resistor_default_i",          output_resistor_default_i)
    context.setContextProperty("output_resistor_default_p",          output_resistor_default_p)
    context.setContextProperty("output_resistor_default_k_p",        output_resistor_default_k_p)
    context.setContextProperty("output_resistor_default_korekta",    output_resistor_default_korekta)
    context.setContextProperty("output_resistor_default_j",          output_resistor_default_j)

    context.setContextProperty("output_capacitor_default_c", output_capacitor_default_c)
    context.setContextProperty("output_capacitor_default_n", output_capacitor_default_n)
    context.setContextProperty("output_capacitor_default_d0", output_capacitor_default_d0)

    context.setContextProperty("output_faq", output_faq)

    context.setContextProperty("output_resistor_1", output_resistor_1)
    context.setContextProperty("output_resistor_2", output_resistor_2)
    context.setContextProperty("output_resistor_3", output_resistor_3)
    context.setContextProperty("output_resistor_4", output_resistor_4)
    context.setContextProperty("output_resistor_5", output_resistor_5)
    context.setContextProperty("output_resistor_6", output_resistor_6)
    context.setContextProperty("output_resistor_7", output_resistor_7)

    context.setContextProperty("output_capacitor_1", output_capacitor_1)
    context.setContextProperty("output_capacitor_2", output_capacitor_2)
    context.setContextProperty("output_capacitor_3", output_capacitor_3)
    context.setContextProperty("output_capacitor_4", output_capacitor_4)

    engine.load(os.path.join(os.path.dirname(__file__), "frontend/main.qml"))

    backend.static.init()

    main_logic_input = {
        "input_resistor_data": input_resistor_data,
        "input_capacitor_data": input_capacitor_data,
        "output_past_list": output_past_list,
        "output_past_list_dielectric": output_past_list_dielectric,
        "output_new_past_types": output_new_past_types,
        "output_manufactoring_method_list": output_manufactoring_method_list,
        "output_resistor": {
            "1": output_resistor_1,
            "2": output_resistor_2,
            "3": output_resistor_3,
            "4": output_resistor_4,
            "5": output_resistor_5,
            "6": output_resistor_6,
            "7": output_resistor_7
        },
        "output_capacitor": {
            "1": output_capacitor_1,
            "2": output_capacitor_2,
            "3": output_capacitor_3,
            "4": output_capacitor_4
        },
        "resistor_default_value": {
            "r":        output_resistor_default_r,
            "i":        output_resistor_default_i,
            "p":        output_resistor_default_p,
            "k_p":      output_resistor_default_k_p,
            "korekta":  output_resistor_default_korekta,
            "j":        output_resistor_default_j
        },
        "capacitor_default_value": {
            "c":        output_capacitor_default_c,
            "n":        output_capacitor_default_n,
            "d0":       output_capacitor_default_d0,
        }
    }

    if not engine.rootObjects():
        sys.exit(-1)

    timer = QTimer(interval=10)
    timer.timeout.connect(partial(back.main_logic, main_logic_input))
    timer.start()
    sys.exit(app.exec_())
