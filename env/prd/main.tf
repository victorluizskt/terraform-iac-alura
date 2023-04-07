module "aws-prod" {
  source = "../../infra"
  instance = "t2.micro"
  region_us_east_1_aws = "us-east-1"
  key = "Iac-Prod"
  name_instance = "prd"
  geral_access = "geral_access_prd"
}

output "public_ip_prd" {
  value = module.aws-prod.public_ip
}