Bonjour,

Vous trouverez dans ce READ_ME l'ensemble des instructions permettant de faire fonctionner notre base de données de gestion des associations.

Avant de pouvoir consulter notre base de données il faut se connecter à la machine Oracle. Si vous travaillez depuis votre ordinateur portable vous devez au préalable vous connecter en ssh au réseau de l'ENSEIRB-MATMECA  via :

    ssh login@ssh.enseirb-matmeca.fr


Connectez vous ensuite à la machine Oracle avant de définir les variables d'environnement nécessaires à l'utilisation de la base de données  via :

    ssh oracle
    export PATH=$PATH:/home/oracle/app/oracle/product/11.2.0/dbhome_1/bin
    export ORACLE_HOME=/home/oracle/app/oracle/product/11.2.0/dbhome_1
    export ORACLE_SID=oracle
    export ORACLE_HOME_LISTNER=$ORACLE_HOME


Vous pouvez vous passez de définir ces variables à chaque fois en ajoutant les export  ci-dessus dans le .bashrc.
On se connecte ensuite à SQL*Plus via la commande 'sqlplus'. Rentrez vote mot de passe, défini par défaut égal à voter login.

Il reste à créer la base de données et à remplir les tables avant de pouvoir manipuler la base. On tape pour cela les deux commandes @base  puis @donnees . On peut maintenant utiliser notre base.

Maintenant que la machine est opérationnelle nous allons voir l'ensemble des opérations qui seront disponibles.
Pour afficher l'ensemble des commandes disponibles tapez @help .
Vous disposerez ensuite d'un ensemble d'opérations vous permettant de consulter ou de modifier la base.
L'interface vous demandera alors de saisir différentes valeurs selon ce que vous souhaitez consulter ou modifier.
Notez qu'il faut mettre des ' ' autour des chaînes de caractères et des dates. Ces dernières sont par ailleurs au format '11-DEC-18'.
Vous disposez à présent de toutes les informations nécessaires pour faire fonctionner notre base de données.

Nous vous remercions pour votre attention.
