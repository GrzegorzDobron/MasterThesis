path = "./frontend/text/faq.txt"

# default input value
r = 0               # rezystancja docelowa
i_max = 0           # prad max
p_max = 0           # moc max
k_p = 0.2           # wspolczynnik mocy
k_j = 0.2           # wspolczynnik obciazalnosci
j = 8               # obciazalnosc

selected_resistance_correction_methods = ""
selected_paste = ""

# default output value
x = 0               # szerokosc
y = 0               # n * x

paste_database = {
    "": {
        "TWR": 0,
        "R": 0
    },
    "pasta1": {
        "TWR": 1,
        "R": 2,
    },
    "pasta2": {
        "TWR": 12,
        "R": 10,
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
