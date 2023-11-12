pipeline {
  agent any
  stages {
    stage('Checkout Source') {
      steps {
        checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: 'git', url: 'https://github.com/shreegs123/Capstone_Project_repo.git']])
      }
    }
    stage('checkout branch') {
      steps {
        script {
          Map scmVars = checkout([/* Some checkout paramaters */])
          scmVars.each { k, v ->
            env[k] = v
            sh 'env | grep GIT_'
          }
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

