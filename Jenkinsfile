pipeline {
  agent { label 'fargate-standard'}
  triggers {
    GenericTrigger(
      genericVariables: [
      [key: 'ref', value: '$.ref']
      ],

      causeString: 'Triggered on $ref',
      token: 'mySecretToken',
      printContributedVariables: true,
      printPostContent: true,
      silentResponse: false
      )
  }
  stages {
    stage('TerraformPlan') {
      steps {
            checkout scm
	          sh 'echo Using inbound agent image including terraform and task role for needed AWS services'
            sh 'terraform init -input=false && terraform plan -out=tfplan -input=false'
      }
    }

    stage('NotifyForApproval') {
      steps {  
          slackSend channel: 'ias', color: '#1e602f', message: "Please visit the Jenkins server to approve the Terraform plan"
      }
    }

    stage('TerraformApprove') {
      input {
        message "Apply the terraform plan?"
        ok "Apply It"
      }
      steps {
        sh 'echo Approval given'
      }
    }

    stage('TerraformApply') {       
      steps {
          sh 'terraform apply -input=false tfplan'
          slackSend channel: 'ias', color: '#1e602f', message: "Terraform plan has been applied"
      } 
    }

  }
}
