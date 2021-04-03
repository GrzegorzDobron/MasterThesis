A = "=$E$3*$G$3+$E$4*$G$4"

wynik = "="

a = "$E$"
liczba = 3
b = "*$G$"
c = "+"

for liczba in range(3, 60):
    wynik = wynik + a + str(liczba) + b + str(liczba) + c

print(wynik)
