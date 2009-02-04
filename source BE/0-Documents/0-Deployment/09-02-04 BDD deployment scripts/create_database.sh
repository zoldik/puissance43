#!/bin/bash

if [ `whoami` != 'root' ]; then
	echo "Vous devez lancer ce script en étant connecté en root.";
	exit
fi

. ./config.sh

if [ "$DB_MANAGER" == "mysql" ]; then
	mysqladmin create $DATABASE -p
	echo "
	GRANT ALL ON $DATABASE.* TO '$USER'@'localhost' IDENTIFIED BY '$PASSWORD';
	GRANT ALL ON $DATABASE.* TO '$USER'@'localhost.localdomain' IDENTIFIED BY '$PASSWORD';
	GRANT ALL ON $DATABASE.* TO '$USER'@'%' IDENTIFIED BY '$PASSWORD';
	" | $DB_MANAGER --user=root mysql -p
else
	su postgres -c "createdb -E UTF8 $DATABASE"
	su postgres -c "createuser -A -D -R $USER"
	echo "
	ALTER USER $USER LOGIN;
	ALTER USER $USER PASSWORD '$PASSWORD';
	GRANT ALL PRIVILEGES ON DATABASE $DATABASE to $USER;
	" | su postgres -c "$DB_MANAGER"
fi 
