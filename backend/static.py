import os

import openpyxl
from PyQt5.QtCore import pyqtSlot

import backend.back
import var


def add_new_paste():
    print("add_new_paste")
    print("przed dodaniem:", var.paste_database)

    nazwa = var.new_paste_name
    twr = var.new_paste_twr
    r = var.new_paste_r

    print(nazwa, twr, r)

    if type(nazwa) == str and type(twr) == float and type(r) == float:
        print("dodanie do słownika")
        var.paste_database.update({nazwa: {var.dataframe_r[1]: float(twr),
                                           var.dataframe_r[2]: float(r)}})
        print("dodane do slownika:", var.paste_database)

    try:
        workbook = openpyxl.load_workbook(var.path_pasty)
        sheet = workbook.active
        sheet = workbook.get_sheet_by_name(var.pasty_worksheet_r_name)
        sheet.append((str(nazwa), twr, r))
        workbook.save(var.path_pasty)


    except FileNotFoundError or FileExistsError:
        print("blad dodania")
        init_csv()
        pasty_to_dict()


def init_csv():
    workbook = openpyxl.Workbook()
    sheet_rezystywne = workbook.active
    sheet_rezystywne.title = var.pasty_worksheet_r_name

    for column in range(1, len(var.dataframe_r) + 1):
        sheet_rezystywne.cell(row=1, column=column).value = var.dataframe_r[column - 1]
        sheet_rezystywne.cell(row=2, column=column).value = var.pasty_r_default[column - 1]

    workbook.save(var.path_pasty)


def pasty_to_dict():
    workbook = openpyxl.load_workbook(var.path_pasty)
    sheet = workbook.active

    for row in sheet.iter_rows(min_row=2, min_col=1, max_row=30, max_col=len(var.dataframe_r)):
        tmp = []
        for cell in row:
            tmp.append(cell.value)

        nazwa = str(tmp[0])
        twr = str(tmp[1])
        r = str(tmp[2])

        if twr != "None" and r != "None":
            twr = input_to_float(twr)
            r = input_to_float(r)

            if type(nazwa) != "" and type(twr) == float and type(r) == float:
                var.paste_database.update({nazwa: {var.dataframe_r[1]: twr,
                                                   var.dataframe_r[2]: r}})

    print("pasty to disct:", var.paste_database)


def init():
    if not os.path.isfile(var.path_pasty):
        init_csv()
        pasty_to_dict()
    if os.path.isfile(var.path_pasty):
        pasty_to_dict()


class static_function(backend.back.application):

    @pyqtSlot()
    def exit(self):
        print("exit")
        exit(1)

    @pyqtSlot()
    def add_new_paste(self):
        add_new_paste()


def input_to_float(inside):
    try:
        inside = inside.replace(",", ".")
        value = float(inside)
        return value
    except AttributeError:
        value = float(inside)
        return value
    except TypeError:
        return 0
    except ValueError:
        return 0
