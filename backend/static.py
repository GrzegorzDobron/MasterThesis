import os

import openpyxl
from PyQt5.QtCore import pyqtSlot

import var
from backend import back


def add_new_paste():
    nazwa = var.new_paste_name
    r = var.new_paste_r
    przenikalnosc = var.new_paste_przenikalnosc
    typ = var.new_paste_type

    print("nazwa:", nazwa,
          "r:", r,
          "przenikalnosc:", przenikalnosc,
          "typ:", typ)

    if typ == var.db_pasty_rezystywne_new:
        db = var.db_paste_rezystywne
        dataframe = var.db_pasty_rezystywne_dataframe
        sheet_name = var.db_pasty_rezystywne_sheet

        if type(nazwa) == str and type(r) == float:
            db.update({nazwa: {dataframe[1]: float(r)}})

        try:
            workbook = openpyxl.load_workbook(var.path_pasty)
            sheet = workbook.get_sheet_by_name(sheet_name)
            sheet.append((str(nazwa), r))
            workbook.save(var.path_pasty)

        except FileNotFoundError or FileExistsError:
            init_csv()
            pasty_to_dict()

    print(var.db_paste_rezystywne)

    if typ == var.db_pasty_izolacyjne_new:
        db = var.db_paste_dielektryczne
        dataframe = var.db_pasty_dielektryczne_dataframe
        sheet_name = var.db_pasty_dielektryczne_sheet

        if type(nazwa) == str and type(przenikalnosc) == float:
            db.update({nazwa: {dataframe[1]: float(r)}})

        try:
            workbook = openpyxl.load_workbook(var.path_pasty)
            sheet = workbook.get_sheet_by_name(sheet_name)
            sheet.append((str(nazwa), przenikalnosc))
            workbook.save(var.path_pasty)

        except FileNotFoundError or FileExistsError:
            init_csv()
            pasty_to_dict()


def init_csv():
    workbook = openpyxl.Workbook()

    sheet_rezystywne = workbook.create_sheet(var.db_pasty_rezystywne_sheet, 0)
    sheet_izolacyjne = workbook.create_sheet(var.db_pasty_dielektryczne_sheet, 1)
    workbook.remove_sheet(workbook.get_sheet_by_name("Sheet"))

    for column in range(1, len(var.db_pasty_rezystywne_dataframe) + 1):
        sheet_rezystywne.cell(row=1, column=column).value = var.db_pasty_rezystywne_dataframe[column - 1]
        sheet_rezystywne.cell(row=2, column=column).value = var.db_pasty_rezystywne_default[column - 1]

    for column in range(1, len(var.db_pasty_dielektryczne_dataframe) + 1):
        sheet_izolacyjne.cell(row=1, column=column).value = var.db_pasty_dielektryczne_dataframe[column - 1]
        sheet_izolacyjne.cell(row=2, column=column).value = var.db_pasty_izolacyjne_default[column - 1]

    workbook.save(var.path_pasty)


def pasty_to_dict():
    workbook = openpyxl.load_workbook(var.path_pasty)

    sheet_rezystywne = workbook.get_sheet_by_name(var.db_pasty_rezystywne_sheet)
    sheet_izolacyjne = workbook.get_sheet_by_name(var.db_pasty_dielektryczne_sheet)

    sheet_list = [sheet_rezystywne, var.db_pasty_rezystywne_dataframe, var.db_paste_rezystywne]

    for row in sheet_list[0].iter_rows(min_row=2, min_col=1, max_row=30, max_col=len(sheet_list[1])):
        tmp = []
        for cell in row:
            tmp.append(cell.value)

        nazwa = str(tmp[0])
        r = str(tmp[1])

        if r != "None":
            r = input_to_float(r)

            if type(nazwa) != "" and type(r) == float:
                sheet_list[2].update({nazwa: {sheet_list[1][1]: r}})

    sheet_list = [sheet_izolacyjne, var.db_pasty_dielektryczne_dataframe, var.db_paste_dielektryczne]

    for row in sheet_list[0].iter_rows(min_row=2, min_col=1, max_row=30, max_col=len(sheet_list[1])):
        tmp = []
        for cell in row:
            tmp.append(cell.value)

        nazwa = str(tmp[0])
        przenikalnosc = str(tmp[1])

        if przenikalnosc != "None":
            przenikalnosc = input_to_float(przenikalnosc)

            if type(nazwa) != "" and type(przenikalnosc) == float:
                sheet_list[2].update({nazwa: {sheet_list[1][1]: przenikalnosc}})

    print(var.db_paste_dielektryczne)
    print(var.db_paste_rezystywne)


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
