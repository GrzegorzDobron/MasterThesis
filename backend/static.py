import csv
import os

from PyQt5.QtCore import QObject, pyqtSlot

import var


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
                TWR = input_to_float(row[1])
                R = input_to_float(row[2])
                if type(nazwa) == str and type(TWR) == float and type(R) == float:
                    var.paste_database.update({row[0]: {"TWR": row[1], "R": row[2]}})
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


class static_function(QObject):

    @pyqtSlot()
    def exit(self):
        print("exit")
        exit(1)


def input_to_float(inside):
    try:
        inside = inside.replace(",", ".")
        value = float(inside)
        return value
    except ValueError:
        pass
