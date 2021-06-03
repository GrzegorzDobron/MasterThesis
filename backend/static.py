import os
import sys

import openpyxl

from PyQt5.QtCore import pyqtSlot
from past.builtins import execfile
import threading
from backend import back
import var


def add_new_paste():
    print("add_new_paste")
    print("przed dodaniem:", var.db_paste_rezystywne)

    nazwa = var.new_paste_name
    twr = var.new_paste_twr
    r = var.new_paste_r
    typ = var.new_paste_type

    print(nazwa, twr, r)

    if typ == var.db_pasty_rezystywne_new:
        db = var.db_paste_rezystywne
        dataframe = var.db_pasty_rezystywne_dataframe
        sheet_name = var.db_pasty_rezystywne_sheet
    if typ == var.db_pasty_przewodzace_new:
        db = var.db_paste_przewodzace
        dataframe = var.db_pasty_przewodzace_dataframe
        sheet_name = var.db_pasty_przewodzace_sheet
    if typ == var.db_pasty_izolacyjne_new:
        db = var.db_paste_izolacyjne
        dataframe = var.db_pasty_izolacyjne_dataframe
        sheet_name = var.db_pasty_izolacyjne_sheet

    if type(nazwa) == str and type(twr) == float and type(r) == float:
        db.update({nazwa: {dataframe[1]: float(twr),
                           dataframe[2]: float(r)}})

    try:
        workbook = openpyxl.load_workbook(var.path_pasty)
        sheet = workbook.get_sheet_by_name(sheet_name)
        sheet.append((str(nazwa), twr, r))
        workbook.save(var.path_pasty)

    except FileNotFoundError or FileExistsError:
        init_csv()
        pasty_to_dict()


def init_csv():
    workbook = openpyxl.Workbook()

    sheet_rezystywne = workbook.create_sheet(var.db_pasty_rezystywne_sheet, 0)
    sheet_przewodzace = workbook.create_sheet(var.db_pasty_przewodzace_sheet, 1)
    sheet_izolacyjne = workbook.create_sheet(var.db_pasty_izolacyjne_sheet, 2)
    workbook.remove_sheet(workbook.get_sheet_by_name("Sheet"))

    for column in range(1, len(var.db_pasty_rezystywne_dataframe) + 1):
        sheet_rezystywne.cell(row=1, column=column).value = var.db_pasty_rezystywne_dataframe[column - 1]
        sheet_rezystywne.cell(row=2, column=column).value = var.db_pasty_rezystywne_default[column - 1]

    for column in range(1, len(var.db_pasty_przewodzace_dataframe) + 1):
        sheet_przewodzace.cell(row=1, column=column).value = var.db_pasty_przewodzace_dataframe[column - 1]
        sheet_przewodzace.cell(row=2, column=column).value = var.db_pasty_przewodzace_default[column - 1]

    for column in range(1, len(var.db_pasty_izolacyjne_dataframe) + 1):
        sheet_izolacyjne.cell(row=1, column=column).value = var.db_pasty_izolacyjne_dataframe[column - 1]
        sheet_izolacyjne.cell(row=2, column=column).value = var.db_pasty_izolacyjne_default[column - 1]

    workbook.save(var.path_pasty)


def pasty_to_dict():
    workbook = openpyxl.load_workbook(var.path_pasty)

    sheet_rezystywne = workbook.get_sheet_by_name(var.db_pasty_rezystywne_sheet)
    sheet_przewodzace = workbook.get_sheet_by_name(var.db_pasty_przewodzace_sheet)
    sheet_izolacyjne = workbook.get_sheet_by_name(var.db_pasty_izolacyjne_sheet)

    sheet_list = [[sheet_rezystywne, var.db_pasty_rezystywne_dataframe, var.db_paste_rezystywne],
                  [sheet_przewodzace, var.db_pasty_przewodzace_dataframe, var.db_paste_przewodzace],
                  [sheet_izolacyjne, var.db_pasty_izolacyjne_dataframe, var.db_paste_izolacyjne]]

    for sheet in sheet_list:
        for row in sheet[0].iter_rows(min_row=2, min_col=1, max_row=30, max_col=len(sheet[1])):
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
                    sheet[2].update({nazwa: {sheet[1][1]: twr,
                                             sheet[1][2]: r}})

    # print("rezystywne:", var.db_paste_rezystywne, "\n"
    #       "przewodzace:", var.db_paste_przewodzace, "\n"
    #       "izolacyjne:", var.db_paste_izolacyjne)


def init():
    if not os.path.isfile(var.path_pasty):
        init_csv()
    pasty_to_dict()


class static_function(back.application):

    @pyqtSlot()
    def exit(self):
        print("exit")
        exit(1)

    @pyqtSlot()
    def add_new_paste(self):
        add_new_paste()

    @pyqtSlot()
    def resistor_wykres(self):
        wykres()

    @pyqtSlot()
    def capacitor_wykres(self):
        wykres()


def wykres():
    print("wykres")

    from masterThesis import engine, app
    engine.load(os.path.join(os.path.dirname(__file__), "C:/Users/dobro/Documents/masterThesis_soft/plot.qml"))
    sys.exit(app.exec_())




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
