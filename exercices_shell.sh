#!/bin/bash

echo "Exercice 1 : Afficher 'Hello World!'"
echo "Hello World!"
echo

echo "Exercice 2 : Demander ton nom et te saluer"
read -p "Quel est ton nom ? " nom
echo "Bonjour, $nom !"
echo

echo "Exercice 3 : Afficher la date et l’heure actuelles"
date
echo

echo "Exercice 4 : Lister les fichiers d’un dossier donné"
read -p "Donne un chemin de dossier : " dossier
if [ -d "$dossier" ]; then
    echo "Contenu de $dossier :"
    ls "$dossier"
else
    echo "Le dossier $dossier n’existe pas."
fi
echo

echo "Exercice 5 : Compter le nombre de fichiers dans un dossier"
read -p "Donne un chemin de dossier : " dossier2
if [ -d "$dossier2" ]; then
    nb_fichiers=$(ls -1 "$dossier2" | wc -l)
    echo "Il y a $nb_fichiers fichiers dans $dossier2"
else
    echo "Le dossier $dossier2 n’existe pas."
fi
echo

echo "Exercice 6 : Vérifier si un fichier existe"
read -p "Donne un chemin de fichier : " fichier
if [ -f "$fichier" ]; then
    echo "Le fichier $fichier existe."
else
    echo "Le fichier $fichier n’existe pas."
fi
echo

echo "Exercice 7 : Pair ou impair"
read -p "Donne un nombre : " nombre
if (( nombre % 2 == 0 )); then
    echo "$nombre est pair."
else
    echo "$nombre est impair."
fi
echo
