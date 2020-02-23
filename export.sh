#!/bin/bash
_os="`uname`"
_now=$(date +"%m_%d_%Y_%T")
_wpdb="wp-db"
_file="$_wpdb/data_$_now.sql"

docker-compose exec db sh -c 'exec mysqldump "$MYSQL_DATABASE" -hlocalhost  -uroot -p"$MYSQL_ROOT_PASSWORD"' > $_file



if [[ $_os == "Darwin"* ]] ; then
  sed -i '.bak' 1,1d $_file
else
  sed -i 1,1d $_file # Removes the password warning from the file
fi
