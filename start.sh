#!/bin/bash
set -e
docker build -t mysql-docker:latest .
docker run -it -p 3306:3306 mysql-docker:latest
