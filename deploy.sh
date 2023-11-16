#!/bin/bash

dev_docker_pub_repo="manjushreegs/dev"
prod_docker_pri_repo="manjushreegs/prod"

# Get the current Git branch
#GIT_BRANCH=$(git rev-parse --abbrev-ref HEAD)
GIT_BRANCH=$(git for-each-ref --format='%(upstream:short)' "$(git symbolic-ref -q HEAD)")
echo "$GIT_BRANCH"
