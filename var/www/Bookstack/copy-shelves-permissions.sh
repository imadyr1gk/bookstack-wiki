#!/bin/bash

# Début de la boucle infinie
while true
do
    # Se déplace vers le répertoire contenant BookStack
    cd /var/www/BookStack/

    # Exécute la commande pour copier les permissions des étagères
    # Le "yes" répond automatiquement "yes" à toutes les questions
    # Le "php artisan bookstack:copy-shelf-permissions --all" exécute la commande artisan pour copier les permissions de toutes les étagères
    # La sortie est redirigée vers le fichier de journal /var/log/cron-copy-shelves-permissions-wiki.log
    # Les erreurs sont également redirigées vers le même fichier de journal
    yes | php artisan bookstack:copy-shelf-permissions --all >> /var/log/cron-copy-shelves-permissions-wiki.log 2>&1

    # Sort de la boucle après la première itération
    break
done
