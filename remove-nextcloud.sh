#!/bin/bash
docker stop adminer
docker stop postgres
docker stop nextcloud
docker rm adminer
docker rm postgres
docker rm nextcloud
docker network rm lan-nextcloud
rm -rf /home/$USER/opt/nextcloud
rm -rf /home/$USER/opt/postgresql


