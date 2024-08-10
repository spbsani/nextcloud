#!/bin/bash
/usr/bin/docker exec -it postgres psql -U postgres -c "CREATE USER nextcloud WITH PASSWORD 'Aa123456';"
/usr/bin/docker exec -it postgres psql -U postgres -c "CREATE DATABASE nextcloud TEMPLATE template0 ENCODING 'UNICODE';"
/usr/bin/docker exec -it postgres psql -U postgres -c "ALTER DATABASE nextcloud OWNER TO nextcloud;"
/usr/bin/docker exec -it postgres psql -U postgres -c "GRANT ALL PRIVILEGES ON DATABASE nextcloud TO nextcloud;"
