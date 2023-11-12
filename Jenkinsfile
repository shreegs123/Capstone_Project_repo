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
          sh'get_branch () {
          git rev-parse --abbrev-ref HEAD | grep -v HEAD || \
          git describe --exact-match HEAD 2> /dev/null || \
          git rev-parse HEAD
        }'
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

