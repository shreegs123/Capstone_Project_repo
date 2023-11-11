#!/bin/bash

if [[$GIT_BRANCH == origin/main]]; then
  echo "Found a main"
elif [[$GIT_BRANCH == origin/dev]]; then
  echo "Found a dev"
else
  echo "fail"	
fi
  
