# -*- coding: utf-8 -*-

from PyQt5.QtCore import QObject
import var


def main_logic(main_logic_input):
    # default value
    main_logic_input.get("default_value").get("r").text = var.r
    main_logic_input.get("default_value").get("i").text = var.i_max
    main_logic_input.get("default_value").get("p").text = var.p_max
    main_logic_input.get("default_value").get("k_p").text = var.k_p
    main_logic_input.get("default_value").get("k_j").text = var.k_j
    main_logic_input.get("default_value").get("j").text = var.j

    input = main_logic_input.get("input_data")
    output_past_list = main_logic_input.get("output_past_list")
    output_corection_method_list = main_logic_input.get("output_corection_method_list")
    output_resistor_1 = main_logic_input.get("output_resistor").get("1")
    output_resistor_2 = main_logic_input.get("output_resistor").get("2")
    output_resistor_3 = main_logic_input.get("output_resistor").get("3")
    output_resistor_4 = main_logic_input.get("output_resistor").get("4")

    output_resistor = [output_resistor_1, output_resistor_2, output_resistor_3, output_resistor_4]

    pastes_list = []
    for paste in var.paste_database:
        pastes_list.append(paste)
    output_past_list.list = pastes_list

    resistance_correction_methods_list = []
    for method in var.resistance_correction_methods:
        resistance_correction_methods_list.append(method)
    output_corection_method_list.list = resistance_correction_methods_list

    r = input.r
    i = input.i_max
    p = input.p_max
    k_p = input.k_p
    k_j = input.k_j
    j = input.j
    r_kw = var.paste_database.get(input.selected_paste).get("R")
    twr = var.paste_database.get(input.selected_paste).get("TWR")
    korekcja = var.resistance_correction_methods.get(input.selected_resistance_correction_methods).get("korekcja")

    if i != 0 and r != 0:
        p = i * r
        main_logic_input.get("default_value").get("p").text = p

    main_logic_resistor(r=r,
                        i=i,
                        p=p,
                        k_p=k_p,
                        k_j=k_j,
                        j=j,
                        r_kw=r_kw,
                        twr=twr,
                        korekcja=korekcja,
                        output=output_resistor)


class application(QObject):
    # default input value
    r = var.r
    i_max = var.i_max
    p_max = var.p_max
    k_p = var.k_p
    k_j = var.k_j
    j = var.j

    selected_resistance_correction_methods = var.selected_resistance_correction_methods
    selected_paste = var.selected_paste

    # default output value
    x = var.x
    y = var.y

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
        n = round(r_korekcja / r_kw, 0)
    except ZeroDivisionError:
        n = 0

    r_rzeczywiste = n * r_kw

    for x in range(1, 10):
        y = n * x
        s = x * y

    output[0].text = r_korekcja
    output[1].text = n
    output[2].text = r_rzeczywiste
    output[3].text = s_min
