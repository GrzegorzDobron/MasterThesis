# -*- coding: utf-8 -*-
from PyQt5.QtCore import QObject

import var


def main_logic(main_logic_input):
    # default value
    main_logic_input.get("resistor_default_value").get("r").text = var.resistor_r
    main_logic_input.get("resistor_default_value").get("i").text = var.resistor_i_max
    main_logic_input.get("resistor_default_value").get("p").text = var.resistor_p_max
    main_logic_input.get("resistor_default_value").get("k_p").text = var.resistor_k_p
    main_logic_input.get("resistor_default_value").get("k_j").text = var.resistor_k_j
    main_logic_input.get("resistor_default_value").get("j").text = var.resistor_j

    main_logic_input.get("capacitor_default_value").get("c").text = var.capacitor_c

    input_resistor = main_logic_input.get("input_resistor_data")
    input_capacitor = main_logic_input.get("input_capacitor_data")

    output_past_list = main_logic_input.get("output_past_list")
    output_new_past_types = main_logic_input.get("output_new_past_types")
    output_corection_method_list = main_logic_input.get("output_corection_method_list")

    output_resistor_1 = main_logic_input.get("output_resistor").get("1")
    output_resistor_2 = main_logic_input.get("output_resistor").get("2")
    output_resistor_3 = main_logic_input.get("output_resistor").get("3")
    output_resistor_4 = main_logic_input.get("output_resistor").get("4")

    output_resistor = [output_resistor_1, output_resistor_2, output_resistor_3, output_resistor_4]

    pastes_list = []
    resistance_correction_methods_list = []

    for paste in var.db_paste_rezystywne:
        pastes_list.append(paste)
    output_past_list.list = pastes_list

    for method in var.resistance_correction_methods:
        resistance_correction_methods_list.append(method)
    output_corection_method_list.list = resistance_correction_methods_list

    new_paste_types = [var.db_pasty_rezystywne_new, var.db_pasty_przewodzace_new, var.db_pasty_izolacyjne_new]
    output_new_past_types.list = new_paste_types

    resistor_r = input_resistor.resistor_r
    resistor_i = input_resistor.resistor_i_max
    resistor_p = input_resistor.resistor_p_max
    resistor_k_p = input_resistor.resistor_k_p
    resistor_k_j = input_resistor.resistor_k_j
    resistor_j = input_resistor.resistor_j
    resistor_r_kw = var.db_paste_rezystywne.get(input_resistor.selected_paste_rezystywna).get("R")
    resistor_twr = var.db_paste_rezystywne.get(input_resistor.selected_paste_rezystywna).get("TWR")
    korekcja = var.resistance_correction_methods.get(input_resistor.selected_resistance_correction_methods).get("korekcja")

    if resistor_i != 0 and resistor_r != 0:
        resistor_p = resistor_i * resistor_r
        main_logic_input.get("resistor_default_value").get("p").text = resistor_p

    main_logic_resistor(r=resistor_r,
                        i=resistor_i,
                        p=resistor_p,
                        k_p=resistor_k_p,
                        k_j=resistor_k_j,
                        j=resistor_j,
                        r_kw=resistor_r_kw,
                        twr=resistor_twr,
                        korekcja=korekcja,
                        output=output_resistor)


class application(QObject):
    # new paste
    new_paste_name = var.new_paste_name
    new_paste_twr = var.new_paste_twr
    new_paste_r = var.new_paste_r
    new_paste_type = var.new_paste_type

    # default input value resistor
    resistor_r = var.resistor_r
    resistor_i_max = var.resistor_i_max
    resistor_p_max = var.resistor_p_max
    resistor_k_p = var.resistor_k_p
    resistor_k_j = var.resistor_k_j
    resistor_j = var.resistor_j

    # default input value capacitor
    capacitor_c = var.capacitor_c

    selected_resistance_correction_methods = var.selected_resistance_correction_methods
    selected_paste_rezystywna = var.selected_paste_rezystywna
    selected_paste_przewodzaca = var.selected_paste_przewodzaca
    selected_paste_izolacyjne = var.selected_paste_izolacyjna

    # default output value
    resistor_x = var.resistor_x
    resistor_y = var.resistor_y

    def __init__(self):
        QObject.__init__(self)


def main_logic_resistor(r, i, p, k_p, k_j, j, r_kw, twr, korekcja, output):
    r_korekcja = r * korekcja

    if i * r > p:
        p_projektowe = i * r * (1 + k_p)
    if p >= i * r:
        p_projektowe = p * (1 + k_p)

    try:
        s_min = (p_projektowe / j) * (1 + k_j)
    except ZeroDivisionError:
        s_min = 0

    try:
        n = round(r_korekcja / r_kw, 1)
    except ZeroDivisionError:
        n = 0

    r_rzeczywiste = n * r_kw

    for x in range(1, 10):
        y = n * x
        s = x * y

    output[0].text = round(r_korekcja, 2)
    output[1].text = round(n, 2)
    output[2].text = round(r_rzeczywiste, 2)
    output[3].text = round(s_min, 2)


def main_logic_capacitor():
    print("capacitor")
