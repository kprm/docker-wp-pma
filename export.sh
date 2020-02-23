#!/bin/bash
_now=$(date +"%m_%d_%Y_%T")
_wpdb="wp-db"
_file="$_wpdb/data_$_now.sql"

mkdir -p $_wpdb
docker-compose exec db sh -c 'exec mysqldump "$MYSQL_DATABASE" -uroot -p"$MYSQL_ROOT_PASSWORD"' > $_file
