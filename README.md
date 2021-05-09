# aplotnikov-docker-compose-playground
playtesting docker-compose

* start all with start-all.sh script
* stop all with stop-all.sh script


Note: simplest examples contained in /simple folder inside folder


docker-compose in root contains all other services code, but could use extend, but... 

I find extend is not what I was looking for when I wanted to reuse existing docker-compose.yml files. Extending each service is tedious and kafka has 3 services in one file. Have to updated relative path...
docker-compose -f filename1 -f filename2 also has bugs, namely relative path of volumes in filename2 is relative to docker-compose file of filename1. This makes this command unusable for the purposes.
So had to resort to shell-script which is less than ideal tbh (Windows support for shell scripts doesn't exists, but at least you can use mingw)
