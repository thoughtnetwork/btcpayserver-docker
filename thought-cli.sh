#!/bin/bash

docker exec btcpayserver_thoughtd thought-cli -datadir="/data" "$@"
