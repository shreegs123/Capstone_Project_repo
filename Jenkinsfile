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
            echo 'scm : the commit id is ' +scmVars.GIT_COMMIT
            echo 'scm : the commit branch  is ' +scmVars.GIT_BRANCH
            echo 'scm : the previous commit id is ' +scmVars.GIT_PREVIOUS_COMMIT
            def commitEmail = sh(returnStdout: true, script: "git --no-pager show -sformat=\'%ae\'")
            echo " the commiter email is'${commitEmail}'"
            def commitName = sh(returnStdout: true, script: "git --no-pager show -s format=\'%an\'")
            echo " the commiter name is'${commitName}'"
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

