#!/bin/bash

docker build -t caps-img .

docker-compose down || true
<<<<<<< HEAD
=======

>>>>>>> main
docker-compose up -d
