module "vpc" {
  source = "git::https://github.com/vijaya49/Terraform-Modules.git//vpc?ref=main"

  vpc_cidr             = "192.168.0.0/16"
  vpc_name             = "dev-vpc"
  igw_name             = "dev-igw"
  public_subnet_name   = "dev-public"
  private_subnet_name  = "dev-private"
  public_rt_name       = "dev-public-rt"
  private_rt_name      = "dev-private-rt"
  nat_gw_name          = "dev-nat"
  public_subnet_count  = 2
  private_subnet_count = 2
  region               = "us-east-1"
  env                  = "dev"
}
