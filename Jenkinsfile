pipeline {
  agent none
  stages {
    stage('Test') {
        agent { label 'fargate-standard'}
        steps {
            sh 'echo hello from my ecs fargate'
        }
    }
  }
}
