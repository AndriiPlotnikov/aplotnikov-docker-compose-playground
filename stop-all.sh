#!/bin/bash

cd ./redis
docker-compose -f docker-compose.yml stop
cd ..

cd ./mongo
docker-compose -f docker-compose.yml stop
cd ..

cd ./postgresql
docker-compose -f docker-compose.yml stop
cd ..

cd ./kafka-ecosys
docker-compose -f docker-compose.yml stop
cd ..

docker ps