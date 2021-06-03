path_faq = "./frontend/text/faq.txt"
path_pasty = "./database/pasty.xlsx"

db_pasty_rezystywne_dataframe = ["nazwa", "R"]
db_pasty_dielektryczne_dataframe = ["nazwa", "przenikalność"]

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

# default input value resistor
capacitor_c = 0               # pojemnosc docelowa


selected_manufactoring_method = ""
selected_paste_rezystywna = ""
selected_paste_izolacyjna = ""

# adding new paste
new_paste_name = ""
new_paste_r = 0
new_paste_przenikalnosc = 0
new_paste_type = ""


# default output value
resistor_x = 0               # szerokosc
resistor_y = 0               # n * x

db_paste_rezystywne = {
    "": { db_pasty_rezystywne_dataframe[1]: 0 }
}

db_paste_dielektryczne = {
    " ": {
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
