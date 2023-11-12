#!/bin/bash
if [[ $GIT_BRANCH == origin/main ]]; then
        echo "commit to main branch"
	sh ./build.sh

elif [[ $GIT_BRANCH == origin/dev ]]; then
        echo "commit to dev branch"
	sh ./build.sh

else 
	echo "fail"

fi
  
