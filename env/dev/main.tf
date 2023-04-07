module "aws-dev" {
  source = "../../infra"
  instance = "t2.micro"
  region_us_east_1_aws = "us-east-1"
  key = "IaC-DEV"
  name_instance = "dev"
}