#!/bin/bash

if [[$GIT_BRANCH == origin/main]]
        echo "commit to main branch"

elif [[$GIT_BRANCH == origin/dev]]
        echo "commit to dev branch"
        
else    
        echo "deployfailed"

fi
