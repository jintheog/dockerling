#!/bin/bash
set -e # Exit immediately if a command exits with a non-zero status.

# This script should launch two containers on the 'c10-network'.
# The network must be created manually first with 'docker network create c10-network'.

# TODO: Run the postgres container on the network.
# Name: c10-db
# Image: postgres:14-alpine
# Network: c10-network
# Required ENV: POSTGRES_PASSWORD=mysecretpassword

# TODO: Run the busybox container on the network.
# Name: c10-app
# Image: busybox
# Network: c10-network
# Command: sleep 3600

echo "Containers are starting..."

docker run -d --name c10-db --network c10-network -e POSTGRES_PASSWORD=mysecretpassword postgres:14-alpine

docker run -d --name c10-app --network c10-network busybox sleep 3600