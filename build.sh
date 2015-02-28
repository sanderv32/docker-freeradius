#!/usr/bin/env bash

docker rm -f freeradius
docker rmi sanderv32/freeradius

RADIUS_SECRET=$(openssl rand -base64 24)
echo $RADIUS_SECRET
cat Dockerfile.template | sed "s/%RADIUS_SECRET%/$RADIUS_SECRET/g" > Dockerfile

docker build -t sanderv32/freeradius .
