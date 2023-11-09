pipeline {
  agent any
  stages {
    stage('Checkout Source') {
      steps {
        git ''
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

