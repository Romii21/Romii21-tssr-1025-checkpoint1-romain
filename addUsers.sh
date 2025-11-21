#!/bin/bash

#################################
# Script de création de compte
# Il doir creer autant de compte qu il y a d arguments
# Vérification de présence d'arguments
# Vérification de l éxistance d un compte avant de le créer
# Création de compte
# Vérification que le compte a été créé
##################################

# Vérification de présence d'arguments

if [ $# -eq 0 ]
then

        echo "Il n'y a pas d'arguments présents"
        exit 1

fi

# Vérification de l éxistance d un compte avant de le créer

for UTILISATEUR in "$@" 
do

        if id "$UTILISATEUR" > /dev/null
        then

                echo "L'utilsateur $UTILISATEUR existe déja"

        else

                if useradd "$UTILISATEUR"
                then

                        echo "L'utilisateur $UTILISATEUR a été crée"

                else 

                        echo "Echec de création de l'utilisateur $UTILISATEUR"
                fi
        fi
done 
