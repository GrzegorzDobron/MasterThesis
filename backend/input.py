from PyQt5.QtCore import QObject, pyqtSlot

import var
from backend import static, back


class input_new_paste(back.application):
    def __init__(self):
        QObject.__init__(self)

    @pyqtSlot("QString")
    def input_new_paste_resistor_name(self, text):
        if text != "":
            self.new_paste_resistor_name = text
            var.new_paste_resistor_name = text
            print("new_paste_resistor_name=" + str(self.new_paste_resistor_name))
        else:
            self.new_paste_resistor_name = var.new_paste_resistor_name

    @pyqtSlot("QString")
    def input_new_paste_capacitor_name(self, text):
        if text != "":
            self.new_paste_capacitor_name = text
            var.new_paste_capacitor_name = text
            print("new_paste_capacitor_name=" + str(self.new_paste_capacitor_name))
        else:
            self.new_paste_capacitor_name = var.new_paste_capacitor_name

    @pyqtSlot("QString")
    def input_new_paste_przenikalnosc(self, text):
        value = static.input_to_float(text)
        if type(value) == float:
            self.new_paste_przenikalnosc = value
            var.new_paste_przenikalnosc = value
            print("new_paste_przenikalnosc=" + str(self.new_paste_przenikalnosc))
        else:
            self.new_paste_przenikalnosc = var.new_paste_przenikalnosc

    @pyqtSlot("QString")
    def input_new_paste_voltage(self, text):
        value = static.input_to_float(text)
        if type(value) == float:
            self.new_paste_voltage = value
            var.new_paste_voltage = value
            print("new_paste_voltage=" + str(self.new_paste_voltage))
        else:
            self.new_paste_voltage = var.new_paste_voltage

    @pyqtSlot("QString")
    def input_new_paste_r(self, text):
        value = static.input_to_float(text)
        if type(value) == float:
            self.new_paste_r = value
            var.new_paste_r = value
            print("new_paste_r=" + str(self.new_paste_r))
        else:
            self.new_paste_r = var.new_paste_r

class input_capacitor_data(back.application):

    def __init__(self):
        QObject.__init__(self)

    @pyqtSlot("QString")
    def input_capacity(self, text):
        value = static.input_to_float(text)
        if type(value) == float:
            self.capacitor_c = value
            print("C=" + str(self.capacitor_c))
        else:
            self.capacitor_c = var.capacitor_c

    @pyqtSlot("QString")
    def input_voltage(self, text):
        value = static.input_to_float(text)
        if type(value) == float:
            self.capacitor_v = value
            print("v=" + str(self.capacitor_v))
        else:
            self.capacitor_v = var.capacitor_v

    @pyqtSlot("QString")
    def input_thickness_layer(self, text):
        value = static.input_to_float(text)
        if type(value) == float:
            self.capacitor_d0 = value
            print("d0=" + str(self.capacitor_d0))
        else:
            self.capacitor_d0 = var.capacitor_d0

    @pyqtSlot("QString")
    def input_paste(self, text):
        print(text)
        if text != "":
            self.selected_paste_dielectric = text
            print("pasta=" + str(self.selected_paste_dielectric))
        else:
            self.selected_paste_dielectric = var.selected_paste_dielectric

        print(var.db_paste_dielektryczne.get(text).get("er"))

    @pyqtSlot("QString")
    def input_manufactoring_method(self, text):
        if text != "":
            self.selected_manufactoring_method = text
            print("metoda=" + str(self.selected_manufactoring_method))
        else:
            self.selected_manufactoring_method = var.selected_manufactoring_method


class input_resistor_data(back.application):

    def __init__(self):
        QObject.__init__(self)

    @pyqtSlot("QString")
    def input_final_resistance(self, text):
        value = static.input_to_float(text)
        if type(value) == float:
            self.resistor_r = value
            print("R=" + str(self.resistor_r))
        else:
            self.resistor_r = var.resistor_r

    @pyqtSlot("QString")
    def input_current_max(self, text):
        value = static.input_to_float(text)
        if type(value) == float:
            self.resistor_i_max = value
            print("Imax=" + str(self.resistor_i_max))
        else:
            self.resistor_i_max = var.resistor_i_max

    @pyqtSlot("QString")
    def input_power_max(self, text):
        value = static.input_to_float(text)
        if type(value) == float:
            self.resistor_p_max = value
            print("Pmax=" + str(self.resistor_p_max))
        else:
            self.resistor_p_max = var.resistor_p_max

    @pyqtSlot("QString")
    def safety_factor_power(self, text):
        value = static.input_to_float(text)
        if type(value) == float:
            self.resistor_k_p = value
            print("k_p=" + str(self.resistor_k_p))
        else:
            self.resistor_k_p = var.resistor_k_p

    @pyqtSlot("QString")
    def resistance_corection(self, text):
        value = static.input_to_float(text)
        if type(value) == float:
            self.resistor_korekta = value
            print("korekta=" + str(self.resistor_korekta))
        else:
            self.resistor_korekta = var.resistor_korekta

    @pyqtSlot("QString")
    def current_carrying_capacity(self, text):
        value = static.input_to_float(text)
        if type(value) == float:
            self.resistor_j = value
            print("j=" + str(self.resistor_j))
        else:
            self.resistor_j = var.resistor_j

    @pyqtSlot("QString")
    def input_paste(self, text):
        print(text)
        if text != "":
            print(text)
            self.selected_paste_rezystywna = text
            print("pasta=" + str(self.selected_paste_rezystywna))
        else:
            self.selected_paste_rezystywna = var.selected_paste_rezystywna

    @pyqtSlot("QString")
    def input_manufactoring_method(self, text):
        if text != "":
            self.selected_manufactoring_method = text
            print("korekcja=" + str(self.selected_manufactoring_method))
        else:
            self.selected_manufactoring_method = var.selected_manufactoring_method
