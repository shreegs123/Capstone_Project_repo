#!/bin/bash

# Get the current Git branch
git_branch=$(git rev-parse --abbrev-ref HEAD)

# Set Docker image tag based on the Git branch
if [ "$git_branch" == "origin/main" ]; then
	echo "commit is made in main branch"
       	docker_tag="main"
elif [ "$git_branch" == "origin/dev" ]; then
	echo "commit is made in dev branch"
	docker_tag="dev"
else
    echo "Unsupported branch: $git_branch. Exiting."
    exit 1
fi
