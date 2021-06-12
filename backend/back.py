# -*- coding: utf-8 -*-
from PyQt5.QtCore import QObject

import var
import math


def main_logic(main_logic_input):
    # default value resistor
    main_logic_input.get("resistor_default_value").get("r").text = var.resistor_r
    main_logic_input.get("resistor_default_value").get("i").text = var.resistor_i_max
    main_logic_input.get("resistor_default_value").get("p").text = var.resistor_p_max
    main_logic_input.get("resistor_default_value").get("k_p").text = var.resistor_k_p
    main_logic_input.get("resistor_default_value").get("korekta").text = var.resistor_korekta
    main_logic_input.get("resistor_default_value").get("j").text = var.resistor_j

    # default value capacitor
    main_logic_input.get("capacitor_default_value").get("c").text = var.capacitor_c
    main_logic_input.get("capacitor_default_value").get("n").text = var.capacitor_n
    main_logic_input.get("capacitor_default_value").get("d0").text = var.capacitor_d0

    # inputs
    input_resistor = main_logic_input.get("input_resistor_data")
    input_capacitor = main_logic_input.get("input_capacitor_data")

    # outputs lists _dielectric
    output_past_list = main_logic_input.get("output_past_list")
    output_past_list_dielectric = main_logic_input.get("output_past_list_dielectric")
    output_new_past_types = main_logic_input.get("output_new_past_types")
    output_manufactoring_method_list = main_logic_input.get("output_manufactoring_method_list")

    # outputs resistor
    output_resistor_1 = main_logic_input.get("output_resistor").get("1")
    output_resistor_2 = main_logic_input.get("output_resistor").get("2")
    output_resistor_3 = main_logic_input.get("output_resistor").get("3")
    output_resistor_4 = main_logic_input.get("output_resistor").get("4")
    output_resistor_5 = main_logic_input.get("output_resistor").get("5")
    output_resistor_6 = main_logic_input.get("output_resistor").get("6")
    output_resistor_7 = main_logic_input.get("output_resistor").get("7")

    output_resistor = [output_resistor_1, output_resistor_2, output_resistor_3,
                       output_resistor_4, output_resistor_5, output_resistor_6,
                       output_resistor_7]

    # outputs capacitor
    output_capacitor_1 = main_logic_input.get("output_capacitor").get("1")
    output_capacitor_2 = main_logic_input.get("output_capacitor").get("2")
    output_capacitor_3 = main_logic_input.get("output_capacitor").get("3")
    output_capacitor_4 = main_logic_input.get("output_capacitor").get("4")

    output_capacitor = [output_capacitor_1, output_capacitor_2, output_capacitor_3,
                        output_capacitor_4]

    pastes_list = []
    pastes_list_dielectric = []
    manufactoring_method_list = []

    for paste in var.db_paste_rezystywne:
        pastes_list.append(paste)
    output_past_list.list = pastes_list

    for paste in var.db_paste_dielektryczne:
        pastes_list_dielectric.append(paste)
    output_past_list_dielectric.list = pastes_list_dielectric

    for method in var.manufacturing_methods:
        manufactoring_method_list.append(method)
    output_manufactoring_method_list.list = manufactoring_method_list

    # new paste
    new_paste_types = ["", var.db_pasty_rezystywne_new, var.db_pasty_izolacyjne_new]
    output_new_past_types.list = new_paste_types

    # input resistor
    resistor_r = input_resistor.resistor_r
    resistor_i = input_resistor.resistor_i_max
    resistor_p = input_resistor.resistor_p_max
    resistor_k_p = input_resistor.resistor_k_p
    resistor_korekta = input_resistor.resistor_korekta
    resistor_j = input_resistor.resistor_j
    resistor_r_kw = var.db_paste_rezystywne.get(input_resistor.selected_paste_rezystywna).get("R")
    metoda = var.manufacturing_methods.get(input_resistor.selected_manufactoring_method)

    # input capacitor
    capacitor_c = input_capacitor.capacitor_c
    capacitor_n = input_capacitor.capacitor_n
    capacitor_d0 = input_capacitor.capacitor_d0
    capacitor_er = var.db_paste_dielektryczne.get(input_capacitor.selected_paste_dielectric).get("er")
    capacitor_metoda = var.manufacturing_methods.get(input_capacitor.selected_manufactoring_method)

    '''
    zmienna wartość mocy
    '''
    if resistor_i != 0 and resistor_r != 0:
        resistor_p = (resistor_i ** 2 * resistor_r) * 10 ** -3
        main_logic_input.get("resistor_default_value").get("p").text = resistor_p

    main_logic_resistor(r=resistor_r,
                        i=resistor_i,
                        p=resistor_p,
                        k_p=resistor_k_p,
                        j=resistor_j,
                        r_kw=resistor_r_kw,
                        metoda=metoda,
                        korekcja=resistor_korekta,
                        output=output_resistor)

    main_logic_capacitor(c=capacitor_c,
                         n=capacitor_n,
                         d0=capacitor_d0,
                         er=capacitor_er,
                         metoda=capacitor_metoda,
                         output=output_capacitor)


class application(QObject):
    # new paste
    new_paste_name = var.new_paste_name
    new_paste_przenikalnosc = var.new_paste_przenikalnosc
    new_paste_r = var.new_paste_r
    new_paste_type = var.new_paste_type

    # default input value resistor
    resistor_r = var.resistor_r
    resistor_i_max = var.resistor_i_max
    resistor_p_max = var.resistor_p_max
    resistor_k_p = var.resistor_k_p
    resistor_korekta = var.resistor_korekta
    resistor_j = var.resistor_j

    # default output value resistor
    resistor_x = var.resistor_x
    resistor_y = var.resistor_y

    # default input value capacitor
    capacitor_c = var.capacitor_c
    capacitor_n = var.capacitor_n
    capacitor_d0 = var.capacitor_d0

    # default output value capacitor
    capacitor_x = var.capacitor_x
    capacitor_d = var.capacitor_d
    capacitor_er = var.capacitor_er

    selected_manufactoring_method = var.selected_manufactoring_method
    selected_paste_rezystywna = var.selected_paste_rezystywna
    selected_paste_dielectric = var.selected_paste_dielectric

    def __init__(self):
        QObject.__init__(self)


def main_logic_resistor(r, i, p, k_p, j, r_kw, metoda, korekcja, output):
    i = i * 10 ** -3  # mA -> A
    p = p * 10 ** -3  # mW -> W
    metoda = metoda * 10 ** -3  # um -> mm
    j = j * 10 ** -2  # W/cm2 -> W/mm2

    if metoda == "":
        r_kw = 0

    r_korekcja = r * korekcja

    if i ** 2 * r > p:
        p_projektowe = i ** 2 * r * (1 + k_p)
    else:
        p_projektowe = p * (1 + k_p)

    try:
        s_min = (p_projektowe / j)
    except ZeroDivisionError:
        s_min = 0

    try:
        n = round(r_korekcja / r_kw, 2)
    except ZeroDivisionError:
        n = 0

    try:
        x = math.sqrt(s_min / n)
        y = n * x
    except ZeroDivisionError:
        x = 0
        y = 0

    if s_min != 0 and x < metoda and r_kw != 0:
        x = metoda
        y = n * x

    output[0].text = round(r_korekcja, 3)
    output[1].text = round(n, 1)
    output[2].text = round(p_projektowe, 3)
    output[3].text = round(s_min, 3)
    output[4].text = round(x, 3)
    output[5].text = round(y, 3)
    output[6].text = round(r_kw, 2)


def main_logic_capacitor(c, n, d0, er, metoda, output):

    c = c * 10 ** -9  # nF -> F
    metoda = metoda * 10 ** -6  # um -> m
    d0 = d0 * 10 ** -6  # um -> m

    d = n * d0

    try:
        s = (c * d) / (er * var.capacitor_e0)  # m^2
        x = math.sqrt(s)  # m

    except ZeroDivisionError:
        s = 0
        x = var.capacitor_x

    if x < metoda:
        x = metoda

    if c == var.capacitor_c and d0 == var.capacitor_d0:
        x = 0

    x = x * 10 ** 3
    d = d * 10 ** 6
    s = s * 10 ** 6

    output[0].text = round(x, 2)
    output[1].text = round(d, 2)
    output[2].text = round(er, 2)
    output[3].text = round(s, 2)
