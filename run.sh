#!/bin/bash
IMG=$(docker images -q 'mysql-docker-test')
if [[ ! -z "$IMG" ]]; then
  docker rmi --force $IMG
fi
set -e
docker build -t mysql-docker-test .
docker run -it -p 3306:3306 mysql-docker-test
