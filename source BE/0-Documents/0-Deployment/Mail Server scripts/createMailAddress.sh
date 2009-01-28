#!/bin/bash
# Script pour ajouter un utilisateur sous linux
# Modifié pour permettre l'utilisation des mails
# => group mail
# => creation du maildir + ajout des droits
if [ $(id -u) -eq 0 ]; then
        read -p "Entrez l'identifiant : " username
        read -p "Enter le mot de passe : " password
        egrep "^$username" /etc/passwd >/dev/null
        if [ $? -eq 0 ]; then
                echo "$username existe déjà !"
                exit 1
        else
                pass=$(perl -e 'print crypt($ARGV[0], "password")' $password)
                useradd -m -p $pass $username -g mail
		maildirmake /home/$username/Maildir
		chown -R $username /home/$username/Maildir/
		chgrp -R mail /home/$username/Maildir/
                [ $? -eq 0 ] && echo "L'utilisateur a été ajouté au système" || echo "Echec lors de l'ajout de l'utilisateur !"
        fi
else
        echo "Veuillez utilisez sudo ou être sur le compte root"
        exit 2
fi