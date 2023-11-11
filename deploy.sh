#!/bin/bash

if [[ $(git branch --contains) == *main* ]]; then
  echo "Found a main"
elif [[ $(git branch --contains) == *dev* ]]; then
  echo "Found a dev"
else
  echo "fail"	
fi
  
