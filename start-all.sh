#!/bin/bash

cd ./redis
docker-compose -f docker-compose.yml up -d
cd ..

cd ./mongo
docker-compose -f docker-compose.yml up -d
cd ..

cd ./postgresql
docker-compose -f docker-compose.yml up -d
cd ..

cd ./kafka-ecosys
docker-compose -f docker-compose.yml up -d
cd ..

#if you add more services: also update stop-all.sh

docker ps