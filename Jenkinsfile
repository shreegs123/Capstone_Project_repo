pipeline {
  agent any
  environment {
    GIT_COMMIT_REV=''
  }
  stages {
    stage('Checkout Source') {
      steps {
        checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: 'git', url: 'https://github.com/shreegs123/Capstone_Project_repo.git']])
      }
    }
    stage('Configure') {
      steps {
        script {    
          sh 'git rev-parse --abbrev-ref HEAD'
        }
      }
    }

    
    /*stage('Build') {
      steps {
        echo "building phase"
        sh 'bash build.sh'
      }
    }*/
}
}

