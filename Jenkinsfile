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
            sh '//...
    git rev-parse --abbrev-ref HEAD > GIT_BRANCH'
    git_branch = readFile('GIT_BRANCH').trim()
    echo git_branch
    //...
   '
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

