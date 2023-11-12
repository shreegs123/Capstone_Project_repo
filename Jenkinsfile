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
          GIT_COMMIT_REV = sh(returnStdout: true, script: "git log -n 1 --pretty=format:'%h'").trim()
          echo " message --->$GIT_COMMIT_REV"
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

