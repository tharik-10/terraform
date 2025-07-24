@Library('terraform-module-cd-lib@main') _

properties([
    parameters([
        string(
            name: 'tfvarsFile',
            defaultValue: 'terraform.tfvars',
            description: 'Path to .tfvars file relative to terraform module directory'
        ),
        booleanParam(
            name: 'enableDestroy',
            defaultValue: false,
            description: 'Set to true if you want to destroy resources instead of applying them'
        )
    ])
])

// Define the full path to the exact state directory
def exactStatePath = "terraform-module"

terraformCDTemplate(
  terraformDir: 'terraform',
  branch: 'main',
  repoUrl: 'https://github.com/tharik-10/terraform.git',
  credentialsId: 'Tharik-git-token',
  tfvarsFile: params.tfvarsFile,
  enableDestroy: params.enableDestroy,
  approvalMessage: "Please approve before applying/destroying Terraform changes to the terraform module",
  exactStatePath: exactStatePath
)
