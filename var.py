path_faq = "./frontend/text/faq.txt"
path_pasty = "./database/pasty.xlsx"

db_pasty_rezystywne_dataframe = ["nazwa", "TWR", "R"]
db_pasty_przewodzace_dataframe = ["nazwa", "TWR", "R"]
db_pasty_izolacyjne_dataframe = ["nazwa", "TWR", "R"]

db_pasty_rezystywne_sheet = "pasty rezystywne"
db_pasty_przewodzace_sheet = "pasty przewodzące"
db_pasty_izolacyjne_sheet = "pasty dielektryczne"

db_pasty_rezystywne_new = "pasta rezystywna"
db_pasty_przewodzace_new = "pasta przewodząca"
db_pasty_izolacyjne_new = "pasta dielektryczna"

db_pasty_rezystywne_default = ["pasta1", 1, 2]
db_pasty_przewodzace_default = ["pasta1", 11, 12]
db_pasty_izolacyjne_default = ["pasta1", 21, 22]


# default input value resistor
resistor_r = 0               # rezystancja docelowa
resistor_i_max = 0           # prad max
resistor_p_max = 0           # moc max
resistor_k_p = 0.2           # wspolczynnik mocy
resistor_korekta = 0.8           # wspolczynnik obciazalnosci
resistor_j = 8               # obciazalnosc

# default input value resistor
capacitor_c = 0               # pojemnosc docelowa


selected_resistance_correction_methods = ""
selected_paste_rezystywna = ""
selected_paste_przewodzaca = ""
selected_paste_izolacyjna = ""

# adding new paste
new_paste_name = ""
new_paste_twr = 0
new_paste_r = 0
new_paste_type = ""


# default output value
resistor_x = 0               # szerokosc
resistor_y = 0               # n * x

db_paste_rezystywne = {
    "": {
        db_pasty_rezystywne_dataframe[1]: 0,
        db_pasty_rezystywne_dataframe[2]: 0
    }
}

db_paste_przewodzace = {
    "": {
        db_pasty_przewodzace_dataframe[1]: 0,
        db_pasty_przewodzace_dataframe[2]: 0
    }
}

db_paste_izolacyjne = {
    "": {
        db_pasty_izolacyjne_dataframe[1]: 0,
        db_pasty_izolacyjne_dataframe[2]: 0
    }
}

resistance_correction_methods = {
    "": {
      "korekcja": 0
    },
    "metoda1": {
        "korekcja": 0.8
    }
}

manufacturing_methods = {
    100: "sitodruk standardowy",
    50: "sitodruk precyzyjny",
    15: "trawienie przed wypaleniem",
    25: "trawienie po wypaleniu",
    30: "nanoszenie przez dysze",
    10: "formowanie laserem"
}


