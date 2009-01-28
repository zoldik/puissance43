#!/bin/bash
# Script pour ajouter un utilisateur sous linux
# Modifié pour permettre l'utilisation des mails
# => group mail
# => creation du maildir + ajout des droits
# => passage login/mdp en arguments
if [ $# = 1 ]; then
    if [ $(id -u) -eq 0 ]; then
	    egrep "^$1" /etc/passwd >/dev/null
	    if [ $? -eq 0 ]; then
		    echo "$1 : Le compte existe"
		    deluser -remove-home $1
	    else
		    echo "Le compte n'existe pas !"
	    fi
    else
	    echo "Veuillez utilisez sudo ou être sur le compte root"
	    exit 2
    fi
else
    echo "Argument(s) manquant(s) ou trop d'argument(s)"
    echo "Syntaxe : ./deleteMailAddress <name>"
    exit  3
fi