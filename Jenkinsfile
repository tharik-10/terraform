@Library('terraform-module-ci-lib@main') _

terraformCICheckTemplate(
  tfModuleDir: 'modules/network',
  backendConfig: [
    bucket: 'tfstate-demo-bucket',
    key: 'network/dev/terraform.tfstate',
    region: 'ap-south-1'
  ],
  tfVars: [
    environment: 'dev',
    region: 'ap-south-1',
    vpc_cidr: '10.0.0.0/16',
    public_subnet_cidr: '10.0.1.0/24',
    az: 'ap-south-1a'
  ],
  planOutFile: 'tfplan.out'
)
