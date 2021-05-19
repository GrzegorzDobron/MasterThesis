path_faq = "./frontend/text/faq.txt"
path_pasty = "./database/pasty.xlsx"


dataframe_r = ["nazwa", "TWR", "R"]
pasty_worksheet_r_name = "rezystywne"
pasty_worksheet_izo_name = "izolacyjne"

pasty_r_default = ["pasta1", 12, 13]


# default input value
r = 0               # rezystancja docelowa
i_max = 0           # prad max
p_max = 0           # moc max
k_p = 0.2           # wspolczynnik mocy
k_j = 0.2           # wspolczynnik obciazalnosci
j = 8               # obciazalnosc

paste_index = 0

new_paste_name = ""
new_paste_twr = 0
new_paste_r = 0

selected_resistance_correction_methods = ""
selected_paste = ""

# default output value
x = 0               # szerokosc
y = 0               # n * x

paste_database = {
    "": {
        "TWR": 0,
        "R": 0
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
}

# 15: "trawienie przed wypaleniem",
# 25: "trawienie po wypaleniu",
# 30: "nanoszenie przez dysze",
# 10: "formowanie laserem"
