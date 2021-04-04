from PyQt5.QtCore import QObject, pyqtSlot
from backend import back
import var


class input_data(back.application):

    def __init__(self):
        QObject.__init__(self)

    @pyqtSlot("QString")
    def input_final_resistance(self, text):
        value = back.input_to_float(text)
        if type(value) == float:
            self.r = value
            print("R=" + str(self.r))
        else:
            self.r = var.r

    @pyqtSlot("QString")
    def input_current_max(self, text):
        value = back.input_to_float(text)
        if type(value) == float:
            self.i_max = value
            print("Imax=" + str(self.i_max))
        else:
            self.i_max = var.i_max

    @pyqtSlot("QString")
    def safety_factor_power(self, text):
        value = back.input_to_float(text)
        if type(value) == float:
            self.k_p = value
            print("k_p=" + str(self.k_p))
        else:
            self.k_p = var.k_p

    @pyqtSlot("QString")
    def current_carrying_capacity(self, text):
        value = back.input_to_float(text)
        if type(value) == float:
            self.j = value
            print("j=" + str(self.j))
        else:
            self.j = var.j

    @pyqtSlot("QString")
    def input_paste(self, text):
        if text != "":
            self.selected_paste = text
            print("pasta=" + str(self.selected_paste))
        else:
            self.selected_paste = var.selected_paste

    @pyqtSlot("QString")
    def input_resistance_correction_methods(self, text):
        self.selected_resistance_correction_methods = text
        print("korekcja=" + str(self.selected_resistance_correction_methods))
