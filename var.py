path_faq = "./frontend/text/faq.txt"
path_pasty = "./database/pasty.xlsx"

db_pasty_rezystywne_dataframe = ["nazwa", "R"]
db_pasty_dielektryczne_dataframe = ["nazwa", "er"]

db_pasty_rezystywne_sheet = "pasty rezystywne"
db_pasty_dielektryczne_sheet = "pasty dielektryczne"

db_pasty_rezystywne_new = "pasta rezystywna"
db_pasty_izolacyjne_new = "pasta dielektryczna"

db_pasty_rezystywne_default = ["pasta1", 1]
db_pasty_izolacyjne_default = ["pasta1", 2]


# default input value resistor
resistor_r = 0               # rezystancja docelowa
resistor_i_max = 0           # prad max
resistor_p_max = 0           # moc max
resistor_k_p = 0.2           # wspolczynnik mocy
resistor_korekta = 0.8       # wspolczynnik obciazalnosci
resistor_j = 8               # obciazalnosc

# default output value
resistor_x = 0               # szerokosc
resistor_y = 0               # n * x

# default input value capacitor
capacitor_c = 0                 # pojemnosc docelowa
capacitor_e0 = 85/96 * 10**-11  # przenikalnosć elektryczna próżni [F/m]
capacitor_er = 0                # względna przenikalność elektryczna
capacitor_n = 1                 # liczba warstw

# default output value capacitor
capacitor_x = 0               # długośc boku dielektryka
capacitor_d0 = 0              # grubość jednej warstwy
capacitor_d = 0               # grubość całkowita



selected_manufactoring_method = ""
selected_paste_rezystywna = ""
selected_paste_dielectric = ""

# adding new paste
new_paste_name = ""
new_paste_r = 0
new_paste_przenikalnosc = 0
new_paste_type = ""

db_paste_rezystywne = {
    "": {
        db_pasty_rezystywne_dataframe[1]: 0
    }
}

db_paste_dielektryczne = {
    "": {
        db_pasty_dielektryczne_dataframe[1]: 0
    }
}

manufacturing_methods = {
    "sitodruk standardowy (100)": 100,
    "sitodruk precyzyjny (50)": 50,
    "trawienie przed wypaleniem (15)": 15,
    "trawienie po wypaleniu (25)": 25,
    "nanoszenie przez dysze (30)": 30,
    "formowanie laserem (10)": 10
}
