pipeline {
  agent any
  stages {
    stage('Checkout Source') {
      steps {
        checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: 'git', url: 'https://github.com/shreegs123/Capstone_Project_repo.git']])
      }
    }
    stage('build') {
      steps {
	script {
	   sh 'current_branch=$(git symbolic-ref --short -q HEAD)'
	   sh 'echo "$current branch"
	}
      }
    }
      
    }
}


