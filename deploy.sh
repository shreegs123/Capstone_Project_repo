#!/bin/bash

<<<<<<< HEAD
if [[$GIT_BRANCH == origin/dev]]
	echo "commit in dev branch"

elif [[$GIT_BRANCH == origin/main]]
	echo "commit in main branch"
else 
	echo "deployment failed"
fi

=======
if [[$GIT_BRANCH == origin/main]]
        echo "commit to main branch"

elif [[$GIT_BRANCH == origin/dev]]
        echo "commit to dev branch"
        
else    
        echo "deployfailed"
>>>>>>> main
