
# import sys
from random import randint

# Projet3 : le jeu du nombre mystère

 # range() ne renvoie pas une liste mais il se comporte comme une liste quand on le parcours

print("*** Le jeu du nombre mystère ***")
print("Il te reste 5 essais")

nombre_essais = 5
nombre_aleatoire = randint(1, 20)


while nombre_essais > 0:
    nombre_a_deviner = input("Devine le nombre : ")
    if not nombre_a_deviner.isdigit(): # Mesure de sécurité
        print("Veuillez entrer un nombre valide.") 
        continue

    nombre_a_deviner = int(nombre_a_deviner)
    nombre_essais -= 1

    if nombre_a_deviner > nombre_aleatoire:
        print(f"Le nombre mystère est plus petit que {nombre_a_deviner}")
    elif nombre_a_deviner < nombre_aleatoire:
        print(f"Le nombre mystère est plus grand que {nombre_a_deviner}")
    else:
        nombre_essais = 5 - nombre_essais
        print(f"Bravoo ! Le nombre mystère était {nombre_aleatoire} !")
        print(f"Tu as trouvé le nombre mystère en {nombre_essais} essais.")
        break # on quitte la boucle après avoir trouvé le bon nombre  
    
    if nombre_essais == 0:
        print(f"Dommage ! Le nombre mystère était {nombre_aleatoire}.")            
        print("== Fin du jeu ==")
        # sys.exit()
        break
    else:
        print(f"Il te reste {nombre_essais} essais")

        