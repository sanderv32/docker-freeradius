#!/usr/bin/env bash

NAME="freeradius"
HOSTNAME="freeradius"

docker run \
	--restart=always \
	-p 1812:1812/udp \
	-p 1813:1813/udp \
	-p 1814:1814/udp \
	-p 18120:18120/udp \
	-h $HOSTNAME \
	--name $NAME \
	-d sanderv32/freeradius
