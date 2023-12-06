import time

lista = [1, 2]

xname = "andrea"


if input("Come ti chiami? ") == xname:
    print("Ciao {}".format(xname))
    time.sleep(1)
    print("Benvenuto nel nostro maniero!")
else:
    print("Mi dispiace ma non sei {}".format(xname))
    time.sleep(1)
    print("Arrivederci")
