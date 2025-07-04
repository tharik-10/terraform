@Library('terraform-module-ci-lib') _

pipeline {
  agent any

  environment {
    TF_MODULE_DIR = 'terraform/modules/network'
  }

  stages {
    stage('Terraform Init') {
      steps {
        script {
          terraformInit(
            directory: "${TF_MODULE_DIR}",
            backendConfig: [
              bucket: 'tfstate-dev-bucket',
              key: 'network/dev/terraform.tfstate',
              region: 'ap-south-1'
            ]
          )
        }
      }
    }

    stage('Terraform Validate') {
      steps {
        script {
          terraformValidate(
            directory: "${TF_MODULE_DIR}"
          )
        }
      }
    }

    stage('Terraform Plan') {
      steps {
        script {
          terraformPlan(
            directory: "${TF_MODULE_DIR}",
            vars: [
              environment: 'dev',
              region: 'ap-south-1',
              vpc_cidr: '10.0.0.0/16',
              public_subnet_cidr: '10.0.1.0/24',
              az: 'ap-south-1a'
            ],
            outFile: 'tfplan.out'
          )
        }
      }
    }
  }
}
