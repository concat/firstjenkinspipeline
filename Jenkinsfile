pipeline {
  agent none
  stages {
    stage('TerraformPlan') {
      agent { label 'fargate-standard' }
      steps {
            checkout scm
	          sh 'echo Using inbound agent image including terraform and task role for needed AWS services'
            sh 'terraform init -input=false && terraform plan -out=tfplan -input=false'
      }
    }

    stage('NotifyForApproval') {
      agent { label 'fargate-standard' }
      steps {  
          slackSend channel: 'ias', color: '#1e602f', message: "Please visit the Jenkins server to approve the Terraform plan"
      }
    }

    stage('TerraformApply') {
      input {
        message "Apply the terraform plan?"
        ok "Apply It"
      }      
      agent { label 'fargate-standard' }
        steps {
          sh 'terraform apply -input=false tfplan'
          slackSend channel: 'ias', color: '#1e602f', message: "Terraform plan has been applied"
      } 
    } 
  }
}
