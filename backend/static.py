import csv
import os

from PyQt5.QtCore import QObject, pyqtSlot

import backend.back
import var


def add_new_paste():
    print("add_new_paste")

    nazwa = var.new_paste_name
    twr = var.new_paste_twr
    r = var.new_paste_r

    print(nazwa, twr, r)

    if type(nazwa) == str and type(twr) == float and type(r) == float:
        print("dodanie do słownika")
        var.paste_database.update({nazwa: {"TWR": float(twr), "R": float(r)}})
        print(var.paste_database)

    try:
        with open(var.path_pasty, "a") as csvfile:
            print("dodanie do pliku")
            writer = csv.writer(csvfile)
            writer.writerow([nazwa, twr, r])
    except FileNotFoundError or FileExistsError:
        init_csv()
        pasty_to_dict()


def init_csv():
    print("init_csv")
    with open(var.path_pasty, "w") as csvfile:
        writer = csv.writer(csvfile)
        writer.writerow(var.pasty_title)


def pasty_to_dict():
    print("Czytanie past")
    with open(var.path_pasty, "r") as csvfile:
        reader = csv.reader(csvfile)
        for row in reader:
            if row:
                nazwa = row[0]
                twr = input_to_float(row[1])
                r = input_to_float(row[2])
                print("TWR type: ", type(twr))
                if type(nazwa) == str and type(twr) == float and type(r) == float:
                    var.paste_database.update({row[0]: {"TWR": float(row[1]), "R": float(row[2])}})
                else:
                    continue
    print(var.paste_database)


def init():
    # pasty
    if not os.path.isfile(var.path_pasty):
        print("brak pliku past")
        init_csv()
    if os.path.isfile(var.path_pasty):
        print("plik istnieje")
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
    except ValueError:
        pass
