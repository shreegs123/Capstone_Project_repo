pipeline {
  agent any
  stages {
    stages {
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

