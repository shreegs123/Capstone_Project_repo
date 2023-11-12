#!/bin/bash

dev_docker_pub_repo="manjushreegs/dev"
prod_docker_pri_repo="manjushreegs/prod"

# Get the current Git branch
GIT_BRANCH=$(git rev-parse --abbrev-ref HEAD)

# Set Docker image tag based on the Git branch
if [ "$GIT_BRANCH" == "origin/main" ]; then
	echo "commit is made in main branch"
       	docker_tag="main"
	
elif [ "$GIT_BRANCH" == "origin/dev" ]; then
	echo "commit is made in dev branch"
	docker_tag="dev"
 	docker build -t "$dev_docker_pub_repo:$docker_tag" .
 
else
    echo "Unsupported branch: $GIT_BRANCH. Exiting."
    exit 1
fi
