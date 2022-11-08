# Studi - ECF Décembre 2022

## Résumé du projet

Le client, une grande marque de salles de sport française que nous appellerons “la salle de Jim”, souhaite la création d’une interface simple, ergonomique et responsive à destination de ses franchisés et de leurs établissements. Cette application, développée en français, permet d’accéder à divers outils de gestion pour 3 types d’utilisateurs: l’administrateur, les franchisés et les salles de sport.

Aucune inscription ne pourra se faire librement et seule l’équipe de développement de La salle de Jim pourra enregistrer un nouveau compte de franchisé sur la plateforme. L’équipe (qui sera donc en possession du compte administrateur de l’application) aura également accès à la liste complète des franchisés et de leurs salles, qu’ils soient actifs ou non. Chaque nouveau partenaire aura accès à certaines fonctionnalités au regard des droits négociés lors de la signature de son contrat. Les permissions des structures franchisées pourront également être modifiées en ligne par l’administrateur.

Les comptes franchisés pourront activer ou désactiver la plateforme au cas par cas pour chaque salle de sport qui lui est rattachée. Parmi ces outils de gestion, nous pouvons citer en exemple: “Envoyer une newsletter”, “Organiser un événement sportif”, “Vendre des boissons”,ou encore “Gérer le planning des équipes”. 
Les fonctionnalités en elles-mêmes ne devront pas être développées pour ce projet. Chaque franchisé aura également la possibilité d’ajouter une nouvelle salle de sport gérée par ses soins via un formulaire.

Enfin, les salles de sport pourront se connecter mais n'auront qu’un accès en lecture seule des modules activés et seront dans l’incapacité de changer les droits qui leurs sont
donnés.

## Démarrage du projet en local

1. Télécharger le projet en .zip sur Github;
2. Extraire les fichiers dans votre dossier wamp64/www/

### Installation du projet

Dans un premier temps, il va falloir créer un virtualHost associé au dossier grâce à WAMP sur votre ordinateur.
Une fois que celui-ci est créé, vous pouvez accéder à la page d'accueil (index.php) en cliquant sur "app" dans l'arborescence du projet.

### Accès à la base de données

La base de données associée au projet est hébergée sur un serveur Amazon. 
Pour y avoir accès, il faudra ajouter les lignes suivantes à la toute fin de votre fichier wamp64/apps/phpmyadmin(votre version)/config.inc.php:

        /* Heroku remote server */
        $i++;
        $cfg["Servers"][$i]["host"] = "ltnya0pnki2ck9w8.chr7pe7iynqr.eu-west-1.rds.amazonaws.com"; 
        $cfg["Servers"][$i]["user"] = "vzots9qgk41z3qvr"; 
        $cfg["Servers"][$i]["password"] = "zjc7k8pl6dbw7imk"; 
        $cfg["Servers"][$i]["auth_type"] = "config"; 

        /* End of servers configuration */

La base de données est maintenant accessible via PhpMyAdmin.
# Studi - ECF Décembre 2022

## Résumé du projet

Le client, une grande marque de salles de sport française que nous appellerons “la salle de Jim”, souhaite la création d’une interface simple, ergonomique et responsive à destination de ses franchisés et de leurs établissements. Cette application, développée en français, permet d’accéder à divers outils de gestion pour 3 types d’utilisateurs: l’administrateur, les franchisés et les salles de sport.

Aucune inscription ne pourra se faire librement et seule l’équipe de développement de La salle de Jim pourra enregistrer un nouveau compte de franchisé sur la plateforme. L’équipe (qui sera donc en possession du compte administrateur de l’application) aura également accès à la liste complète des franchisés et de leurs salles, qu’ils soient actifs ou non. Chaque nouveau partenaire aura accès à certaines fonctionnalités au regard des droits négociés lors de la signature de son contrat. Les permissions des structures franchisées pourront également être modifiées en ligne par l’administrateur.

Les comptes franchisés pourront activer ou désactiver la plateforme au cas par cas pour chaque salle de sport qui lui est rattachée. Parmi ces outils de gestion, nous pouvons citer en exemple: “Envoyer une newsletter”, “Organiser un événement sportif”, “Vendre des boissons”,ou encore “Gérer le planning des équipes”. 
Les fonctionnalités en elles-mêmes ne devront pas être développées pour ce projet. Chaque franchisé aura également la possibilité d’ajouter une nouvelle salle de sport gérée par ses soins via un formulaire.

Enfin, les salles de sport pourront se connecter mais n'auront qu’un accès en lecture seule des modules activés et seront dans l’incapacité de changer les droits qui leurs sont
donnés.

## Démarrage du projet en local

1. Télécharger le projet en .zip sur Github;
2. Extraire les fichiers dans votre dossier wamp64/www/

### Installation du projet

Dans un premier temps, il va falloir créer un virtualHost associé au dossier grâce à WAMP sur votre ordinateur.
Une fois que celui-ci est créé, vous pouvez accéder à la page d'accueil (index.php) en cliquant sur "app" dans l'arborescence du projet.

### Accès à la base de données

La base de données associée au projet est hébergée sur un serveur Amazon. 
Pour y avoir accès, il faudra ajouter les lignes suivantes à la toute fin de votre fichier wamp64/apps/phpmyadmin(votre version)/config.inc.php:

        /* Heroku remote server */
        $i++;
        $cfg["Servers"][$i]["host"] = "ltnya0pnki2ck9w8.chr7pe7iynqr.eu-west-1.rds.amazonaws.com"; 
        $cfg["Servers"][$i]["user"] = "vzots9qgk41z3qvr"; 
        $cfg["Servers"][$i]["password"] = "zjc7k8pl6dbw7imk"; 
        $cfg["Servers"][$i]["auth_type"] = "config"; 

        /* End of servers configuration */

La base de données est maintenant accessible via PhpMyAdmin.