pipeline {
  agent none
  stages {
    stage('TerraformPlan') {
      agent { label 'fargate-standard' }
      steps {
            checkout scm
	          sh 'echo Using inbound agent image including terraform and task role for needed AWS services'
            sh 'terraform init -input=false && terraform plan -out=tfplan -input=false'
            stash name: 'myTFPlan', includes: 'tfplan'
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
      agent { label 'fargate-standard' }       
      steps {
          unstash 'myTFPlan'
          sh 'terraform init -input=false && terraform apply -input=false tfplan'
          slackSend channel: 'ias', color: '#1e602f', message: "Terraform plan has been applied"
      } 
    }

  }
}
