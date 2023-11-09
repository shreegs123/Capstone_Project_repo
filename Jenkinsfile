pipeline {
  agent any
  stages {
    stage('Checkout Source') {
      steps {
        git 'https://github.com/shreegs123/Capstone_Project_repo.git'
      }
    }
    stage('Build image') {
      steps{
        script {
          sh 'docker 
        }
      }
    }
   stage('deploy') {
      steps{
        script {
          sh './deploy.sh'
        }
      }
    } 
}
}

