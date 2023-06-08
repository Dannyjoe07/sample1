module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.0.0"

  name                 = "jarvis-vpc"
  cidr                 = "10.0.0.0/16"
  enable_nat_gateway   = false
  azs                  = ["ap-south-1a", "ap-south-1b"]
  public_subnets       = ["10.0.1.0/24", "10.0.2.0/24"]
  enable_dns_hostnames = true
  enable_dns_support   = true
  public_subnet_names  = ["jarvis-subnet-public-1a", "jarvis-subnet-public-1b"]
}

output "vpdID" {
  value = module.vpc.vpc_id
}

output "subnetID_1a" {
  value = element(module.vpc.public_subnets, 0)
}

output "subnetID_1b" {
  value = element(module.vpc.public_subnets, 1)
}
