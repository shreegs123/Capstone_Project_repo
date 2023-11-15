#!/bin/bash

dev_docker_pub_repo="manjushreegs/dev"
prod_docker_pri_repo="manjushreegs/prod"

# Get the current Git branch
GIT_BRANCH=$(git rev-parse --abbrev-ref HEAD)
echo "current branch is $GIT_BRANCH"

