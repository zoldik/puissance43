#!/bin/bash

. ./config.sh

# Info : On utilise INT NOT NULL AUTO_INCREMENT dans MySQL
#        et SERIAL dans postgresql.

if [ "$DB_MANAGER" == "mysql" ]; then
	SQL_SCRIPT=`cat create_tables.sql`
else
	SQL_SCRIPT=`sed -e "s/INT NOT NULL AUTO_INCREMENT/SERIAL/" create_tables.sql`
fi

echo $SQL_SCRIPT | $DB_MANAGER $USER_OPTION $USER $PASSWORD_OPTION $VERBOSE_OPTION $DATABASE
