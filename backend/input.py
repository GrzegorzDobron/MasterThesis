from PyQt5.QtCore import QObject, pyqtSlot

import var
from backend import static, back


class input_new_paste(back.application):
    def __init__(self):
        QObject.__init__(self)

    @pyqtSlot("QString")
    def input_new_paste_name(self, text):
        if text != "":
            self.new_paste_name = text
            var.new_paste_name = text
            # print("new_paste_name=" + str(self.new_paste_name))
        else:
            self.new_paste_name = var.new_paste_name

    @pyqtSlot("QString")
    def input_new_paste_twr(self, text):
        value = static.input_to_float(text)
        if type(value) == float:
            self.new_paste_twr = value
            var.new_paste_twr = value
            # print("new_paste_twr=" + str(self.new_paste_twr))
        else:
            self.new_paste_twr = var.new_paste_twr

    @pyqtSlot("QString")
    def input_new_paste_r(self, text):
        value = static.input_to_float(text)
        if type(value) == float:
            self.new_paste_r = value
            var.new_paste_r = value
            # print("new_paste_twr=" + str(self.new_paste_r))
        else:
            self.new_paste_r = var.new_paste_r

    @pyqtSlot("QString")
    def input_new_paste_type(self, text):
        if text != "":
            self.new_paste_type = text
            # print("new_paste_type=" + str(self.new_paste_type))
        else:
            self.new_paste_type = var.new_paste_type


class input_capacitor_data(back.application):

    def __init__(self):
        QObject.__init__(self)

    @pyqtSlot("QString")
    def input_final_resistance(self, text):
        value = static.input_to_float(text)
        if type(value) == float:
            self.capacitor_c = value
            # print("C=" + str(self.capacitor_c))
        else:
            self.capacitor_c = var.capacitor_c


class input_resistor_data(back.application):

    def __init__(self):
        QObject.__init__(self)

    @pyqtSlot("QString")
    def input_final_resistance(self, text):
        value = static.input_to_float(text)
        if type(value) == float:
            self.resistor_r = value
            # print("R=" + str(self.resistor_r))
        else:
            self.resistor_r = var.resistor_r

    @pyqtSlot("QString")
    def input_current_max(self, text):
        value = static.input_to_float(text)
        if type(value) == float:
            self.resistor_i_max = value
            # print("Imax=" + str(self.resistor_i_max))
        else:
            self.resistor_i_max = var.resistor_i_max

    @pyqtSlot("QString")
    def input_power_max(self, text):
        value = static.input_to_float(text)
        if type(value) == float:
            self.resistor_p_max = value
            # print("Pmax=" + str(self.resistor_p_max))
        else:
            self.resistor_p_max = var.resistor_p_max

    @pyqtSlot("QString")
    def safety_factor_power(self, text):
        value = static.input_to_float(text)
        if type(value) == float:
            self.resistor_k_p = value
            # print("k_p=" + str(self.resistor_k_p))
        else:
            self.resistor_k_p = var.resistor_k_p

    @pyqtSlot("QString")
    def safety_factor_load(self, text):
        value = static.input_to_float(text)
        if type(value) == float:
            self.resistor_k_j = value
            # print("k_j=" + str(self.resistor_k_j))
        else:
            self.resistor_k_j = var.resistor_k_j

    @pyqtSlot("QString")
    def current_carrying_capacity(self, text):
        value = static.input_to_float(text)
        if type(value) == float:
            self.resistor_j = value
            # print("j=" + str(self.resistor_j))
        else:
            self.resistor_j = var.resistor_j

    @pyqtSlot("QString")
    def input_paste(self, text):
        if text != "":
            self.selected_paste = text
            # print("pasta=" + str(self.selected_paste))
        else:
            self.selected_paste = var.selected_paste_rezystywna

    @pyqtSlot("QString")
    def input_resistance_correction_methods(self, text):
        if text != "":
            self.selected_resistance_correction_methods = text
            # print("korekcja=" + str(self.selected_resistance_correction_methods))
        else:
            self.selected_resistance_correction_methods = var.selected_resistance_correction_methods
