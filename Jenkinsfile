pipeline {
  agent none
  stages {
    stage('Test') {
        agent { label 'fargate-standard'}
        steps {
            checkout scm
            sh 'echo success finally greetings from my ecs fargate'
	    sh 'echo using inbound agent with terraform'
	    sh 'echo with task role for access to S3'
            sh 'terraform init'
        }
    }
  }
}
