module "aws-dev" {
  source = "../../infra"
  instance = "t2.micro"
  region_us_east_1_aws = "us-east-1"
  key = "IaC-DEV"
  name_instance = "dev"
  geral_access = "geral_access_dev"
}

output "public_ip_dev" {
  value = module.aws-dev.public_ip
}