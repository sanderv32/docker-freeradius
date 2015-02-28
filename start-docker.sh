#!/usr/bin/env bash

NAME="freeradius"
HOSTNAME="freeradius"

docker run -p 1812:1812/udp -h $HOSTNAME --name $NAME -d sanderv32/freeradius
