#!/bin/bash

if [[$GIT_BRANCH == origin/main]]; then
        echo "commit to main branch"

else [[$GIT_BRANCH == origin/dev]]
        echo "commit to dev branch"
fi
