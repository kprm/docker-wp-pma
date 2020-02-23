# docker-compose with wordpress mysql and phpmyadmin
<hr>

## 1. create work directory

```
$ mkdir /var/www/html/myproject
```
## 2. clone the repo

```
$ git clone https://github.com/maksymkpr/docker-wp-pma.git .
```

## 3. Change db character, collation, name and password in `.env`
```
IP=127.0.0.1
DB_ROOT_PASSWORD=password
DB_NAME=wordpress
CHARACTER_SERVER=utf8mb4
COLLATION_SERVER=utf8mb4_unicode_ci
```


## 4. Run docker-compose

```
docker-compose up -d --build 
```
## 5. Open `localhost` and install wordpress

  Note: make 
  ```
  docker-compose pull
  ```
  if you have error `Error establishing a database connection` when try to open `localhost`

## PhpMyAdmin
You can login to phpmyadmin `127.0.0.1:8080` by using username=root and password=password (if you dont change password before in `.env`).

## Export db
Will be export to `path/to/myproject/wp-db/`

```
./export.sh 
```
