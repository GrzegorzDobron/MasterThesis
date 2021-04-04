path = "./frontend/text/faq.txt"

# default input value
r = 0
i_max = 0
p_max = 0
k_p = 0.8
k_j = 0.8
j = 8

selected_resistance_correction_methods = ""
selected_paste = ""

# default output value
x = 0
y = 0

paste_database = {
    "": {
        "TWR": 0,
        "R": 0
    },
    "pasta1": {
        "TWR": 12,
        "R": 10,
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
