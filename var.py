path_faq = "./frontend/text/faq.txt"
path_pasty = "./database/pasty.xlsx"

db_pasty_rezystywne_dataframe = ["nazwa", "R [Ω]"]
db_pasty_dielektryczne_dataframe = ["nazwa",
                                    "min. przenikalność",
                                    "max. przenikalność",
                                    "wytrzymałość na przebicie [V/µm]"]

db_pasty_rezystywne_sheet = "pasty rezystywne"
db_pasty_dielektryczne_sheet = "pasty dielektryczne"

db_pasty_rezystywne_new = "pasta rezystywna"
db_pasty_izolacyjne_new = "pasta dielektryczna"

db_pasty_rezystywne_default = [["nazwa", 0],
                               ["DuPont CF041 (1 kΩ)", 1000],
                               ["DuPont CF021 (100 Ω)", 100],
                               ["DuPont CF011 (10 Ω)", 10],
                               ["Heraeus R400A-10 (10 Ω)", 10],
                               ["Heraeus R490A (1 Ω)", 1]]

db_pasty_izolacyjne_default = [["nazwa", 0, 0, 0],
                               ["DuPont 6444", 8, 10, 33.3],
                               ["DuPont 4141A", 3.9, 4.6, 40],
                               ["DuPont 9544", 7, 11, 33.3],
                               ["DuPont 5704", 8, 10, 16],
                               ["DuPont LF151", 8, 10, 53.3],
                               ["DuPont QS482", 8, 12, 32]]


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
capacitor_v = 0                 # napiecie pracy

# default output value capacitor
capacitor_x = 0               # długośc boku dielektryka
capacitor_d0 = 0              # grubość jednej warstwy
capacitor_d = 0               # grubość całkowita
capacitor_n = 0
capacitor_v_out = 0

selected_manufactoring_method = ""
selected_paste_rezystywna = ""
selected_paste_dielectric = ""

# adding new paste
new_paste_resistor_name = ""
new_paste_capacitor_name = ""
new_paste_r = 0
new_paste_przenikalnosc = 0
new_paste_voltage = 0

db_paste_rezystywne = {
    "": {db_pasty_rezystywne_dataframe[1]: 0}
}

db_paste_dielektryczne = {
    "": {
        db_pasty_dielektryczne_dataframe[1]: 0,
        db_pasty_dielektryczne_dataframe[2]: 0,
        db_pasty_dielektryczne_dataframe[3]: 0
    }}

manufacturing_methods = {
    "sitodruk standardowy (100)": 100,
    "sitodruk precyzyjny (50)": 50,
    "trawienie przed wypaleniem (15)": 15,
    "trawienie po wypaleniu (25)": 25,
    "nanoszenie przez dysze (30)": 30,
    "formowanie laserem (10)": 10
}
