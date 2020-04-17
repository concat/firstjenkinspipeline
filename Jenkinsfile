pipeline {
  agent none
  stages {
    stage('Test') {
        agent { label 'standard'}
        steps {
            sh 'echo hello from fargate'
        }
    }
  }
}
