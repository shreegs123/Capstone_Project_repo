pipeline {
  agent any
  stages {
    stage('Checkout Source') {
      steps {
        checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: 'git', url: 'https://github.com/shreegs123/Capstone_Project_repo.git']])
      }
    }
    stage('Get Branch') {
	    steps {
                script {
                    env.GIT_BRANCH_PATH=sh(returnStdout: true, script: "git name-rev --name-only HEAD").trim()
                    env.GIT_BRANCH_NAME=GIT_BRANCH_PATH.split('remotes/origin/')[1]
                    
                }
                sh 'echo BRANCH_NAME ${GIT_BRANCH_NAME}'
            
                    

            
        }
      
    }
}
}


