#!/bin/bash
mkdir -p /opt/postgresql/pgdata
mkdir -p /opt/nextcloud/html
/usr/bin/docker network create -d bridge lan-nextcloud
/usr/bin/docker run --network lan-nextcloud -d --name postgres -e POSTGRES_PASSWORD=Aa123456 -e PGDATA=/var/lib/postgresql/data/pgdata -v /opt/postgresql:/var/lib/postgresql/data -p 5432:5432 -d postgres
#/home/fraud/createdb2.sh
/usr/bin/docker run --network lan-nextcloud -d -v /opt/nextcloud/html:/var/www/html --name nextcloud --link postgres:postgres -p 8080:80 nextcloud
/usr/bin/docker run --network lan-nextcloud --link postgres:postgres -d  --name adminer -p 9090:8080 adminer
sleep 5
./createdb2.sh

#/usr/bin/docker exec  postgres psql -U postgres -c "CREATE USER nextcloud WITH PASSWORD 'Aa123456';"
#/usr/bin/docker exec  postgres psql -U postgres -c "CREATE DATABASE nextcloud TEMPLATE template0 ENCODING 'UNICODE';"
#/usr/bin/docker exec  postgres psql -U postgres -c "GRANT ALL PRIVILEGES ON DATABASE nextcloud TO nextcloud;"



#/usr/bin/docker network connect lan-nextcloud postgres
