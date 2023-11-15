#!/bin/bash

docker build -t capstone-img .

docker-compose down || true
<<<<<<< HEAD
=======

>>>>>>> main
docker-compose up -d
