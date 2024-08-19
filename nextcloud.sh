#!/bin/bash
mkdir -p /home/$USER/opt/postgresql/pgdata
mkdir -p /home/$USER/opt/nextcloud/html
/usr/bin/docker network create -d bridge lan-nextcloud
/usr/bin/docker run --network lan-nextcloud -d --name postgres -e POSTGRES_PASSWORD=Aa123456 -e PGDATA=/var/lib/postgresql/data/pgdata -v /home/$USER/opt/postgresql:/var/lib/postgresql/data -p 5432:5432 -d postgres
#/home/fraud/createdb2.sh
/usr/bin/docker run --network lan-nextcloud -d -v /home/$USER/opt/nextcloud/html:/var/www/html --name nextcloud --link postgres:postgres -p 8080:80 nextcloud
/usr/bin/docker run --network lan-nextcloud --link postgres:postgres -d  --name adminer -p 9090:8080 adminer
sleep 5
./createdb2.sh

