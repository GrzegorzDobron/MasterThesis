# -*- coding: utf-8 -*-

from PyQt5.QtCore import QObject
import var


def main_logic(input, output_paste_list, output_corection_method_list, output_test):

    pastes_list = []
    for paste in var.paste_database:
        pastes_list.append(paste)
    output_paste_list.list = pastes_list


    resistance_correction_methods_list = []
    for method in var.resistance_correction_methods:
        resistance_correction_methods_list.append(method)
    output_corection_method_list.list = resistance_correction_methods_list

    print(input.selected_paste)

    output_test.text = input.r


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

    # tmp var

    # default output value
    x = var.x
    y = var.y

    def __init__(self):
        QObject.__init__(self)


def input_to_float(inside):
    try:
        inside = inside.replace(",", ".")
        value = float(inside)
        return value
    except ValueError:
        pass
