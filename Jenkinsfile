pipeline {
  agent any
  stages {
    stage('Checkout Source') {
      steps {
        checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: 'git', url: 'https://github.com/shreegs123/Capstone_Project_repo.git']])
      }
    }
    stage('Checkout branch') {
            steps {
                script {
                    // Checkout the code
                    checkout scm

                    // Print the GIT_BRANCH to the console
                    echo "Current branch: ${env.GIT_BRANCH}"
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

