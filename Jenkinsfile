@Library('terraform-module-cd-lib@main') _

terraformCDTemplate(
  tfModuleDir: 'terraform',
  tfVars: [
    environment: 'dev',
    region: 'ap-south-1',
    vpc_cidr: '10.0.0.0/16',
    public_subnet_cidr: '10.0.1.0/24',
    az: 'ap-south-1a'
  ],
  action: 'apply'   // Change to 'destroy' to tear down
)
