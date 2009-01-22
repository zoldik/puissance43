#!/bin/bash

. ./config.sh

# Info : Dans MySQL, LIKE est insensible à la casse
#        alors que dans PostgreSQL, il faut utiliser ILIKE

if [ "$DB_MANAGER" == "mysql" ]; then
	SQL_SCRIPT=`cat tables_content.sql`
else
	SQL_SCRIPT=`sed -e " s/LIKE/ILIKE/" tables_content.sql`
fi

echo $SQL_SCRIPT | $DB_MANAGER $USER_OPTION $USER $PASSWORD_OPTION $VERBOSE_OPTION $DATABASE
