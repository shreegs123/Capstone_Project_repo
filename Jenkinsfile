pipeline {
  agent any
  stages {
    stage('Checkout Source') {
      steps {
        checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: 'git', url: 'https://github.com/shreegs123/Capstone_Project_repo.git']])
      }
    }
    stage ('test') {
      steps {
      script {
      sh 'git branch --show-current'
    }
      }
    }
    /*stage('Build') {
      steps {
        echo "building phase."
        sh 'bash build.sh'
      }
    }*/
}
}

