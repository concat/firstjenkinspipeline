pipeline {
  agent none
  stages {
    stage('Test') {
        agent { label 'fargate-standard'}
        steps {
            sh 'echo success finally greetings from my ecs fargate'
        }
    }
  }
}
