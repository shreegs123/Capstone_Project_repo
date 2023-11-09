pipeline {
  agent any
  stages {
    stage('Checkout Source') {
      steps {
        git 'checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: 'git', url: 'https://github.com/shreegs123/Capstone_Project_repo.git']])'
      }
    }
    stage('Build') {
      steps {
        sh 'docker build -t caps-img .'
      }
    }
    stage('Test') {
      steps {
        sh 'docker-compose down || true'
        sh 'docker-compose up -d'
      }
    }
}
}

