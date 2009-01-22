#!/bin/bash

if [ `whoami` != 'root' ]; then
	echo "Vous devez lancer ce script en étant connecté en root.";
	exit
fi

. ./config.sh

if [ "$DB_MANAGER" == "mysql" ]; then
	mysqladmin drop $DATABASE
	echo "
	DROP USER '$USER';
	" | mysql
else
	su postgres -c "dropdb $DATABASE"
        su postgres -c "dropuser $USER"
fi
