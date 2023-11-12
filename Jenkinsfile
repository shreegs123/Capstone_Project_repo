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
            def scmVars = checkout scm
            echo 'scm : the commit branch  is ' +scmVars.GIT_BRANCH
          }
      }
    }
    stage('Build') {
      steps {
        echo "building phase"
        sh 'bash build.sh'
      }
    }
}
}

