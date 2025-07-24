@Library('terraform-module-ci-lib@main') _

properties([
    parameters([
        string(
            name: 'tfvarsFile',
            defaultValue: 'terraform.tfvars', //
            description: 'Path to .tfvars file relative to network-skeleton directory (e.g., ../testing/basic-usage/terraform.tfvars)'
        )
    ])
])

terraformCICheckTemplate(
  terraformDir: 'terraform-module',
  branch: 'main',
  repoUrl: 'https://github.com/tharik-10/terraform.git',
  credentialsId: 'Tharik-git-token',
  tfvarsFile: params.tfvarsFile
)
