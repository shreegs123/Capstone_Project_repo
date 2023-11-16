#!/bin/bash

dev_docker_pub_repo="manjushreegs/dev"
prod_docker_pri_repo="manjushreegs/prod"

# Get the current Git branch
#GIT_BRANCH=$(git rev-parse --abbrev-ref HEAD)
#GIT_BRANCH=$(git for-each-ref --format='%(upstream:short)' "$(git symbolic-ref -q HEAD)")
#echo "$GIT_BRANCH"
current_branch=$(git symbolic-ref --short -q HEAD)

if [ -z "$current_branch" ]; then
    # If in detached HEAD state, get the commit hash
    commit_hash=$(git rev-parse --short HEAD)
    echo "/origin/$commit_hash"
else
    # If on a branch, get the upstream tracking branch
    upstream_branch=$(git for-each-ref --format='%(upstream:short)' "refs/heads/$current_branch")
    echo "/origin/${upstream_branch#origin/}"
fi
