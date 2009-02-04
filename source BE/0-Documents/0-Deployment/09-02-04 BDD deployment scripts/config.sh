#!/bin/bash

##################################################
# Partie modifiable
##################################################

# Mettre mysql ou psql dans DB_NAMAGER
# Mettre le nom de l'utilisateur à utiliser pour se connecter à la base de données dans USER
#     (cet utilisateur n'est pas forcément un utilisateur créé sur le système).
# Indiquer le mot de passe de l'utilisateur dans PASSWORD
# Indiquer le nom de la base dans DATABASE.

DB_MANAGER=mysql
USER=isen
PASSWORD=isen
DATABASE=RedNeck



##################################################
# Partie à ne pas modifier
##################################################

if [ "$DB_MANAGER" == "mysql" ]; then
	USER_OPTION=-u
	PASSWORD_OPTION=-p$PASSWORD
	VERBOSE_OPTION=
else
	USER_OPTION=-U
	PASSWORD_OPTION=
	VERBOSE_OPTION=-q
fi

