#!/bin/bash

echo "===== Mini-guide Git & SSH pour GitHub ====="

echo -e "\n1. Vérifier si tu as une clé SSH :"
echo "ls ~/.ssh"

echo -e "\n2. Afficher ta clé publique (à copier sur GitHub) :"
echo "cat ~/.ssh/id_ed25519.pub"

echo -e "\n3. Générer une nouvelle clé SSH :"
echo 'ssh-keygen -t ed25519 -C "ton-email@example.com"'
echo "(remplace ton-email@example.com par ton e-mail GitHub)"

echo -e "\n4. Démarrer l'agent SSH et ajouter ta clé :"
echo 'eval "$(ssh-agent -s)"'
echo "ssh-add ~/.ssh/id_ed25519"

echo -e "\n5. Tester la connexion SSH avec GitHub :"
echo "ssh -T git@github.com"

echo -e "\n6. Commandes Git essentielles :"

echo "git init                 # Initialiser un dépôt"
echo "git status               # Voir l'état des fichiers"
echo "git add .                # Ajouter tous les fichiers"
echo 'git commit -m "message" # Valider les changements'
echo "git remote -v            # Voir les dépôts distants"
echo "git remote set-url origin https://github.com/TON-PSEUDO/monrepo.git # Changer URL distante"
echo "git push -u origin main  # Envoyer vers GitHub"
echo "git pull origin main --rebase # Récupérer les modifs distantes"

echo -e "\n==== Fin du mini-guide ===="
