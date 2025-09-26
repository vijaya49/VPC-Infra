terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}
# state.tf
terraform {
  backend "s3" {
    bucket       = "my-profile-state-bucket01"
    key          = "vpc/terraform.tfstate"
    region       = "us-east-1"
    encrypt      = true
    use_lockfile = true # Enable S3 native state locking
  }
}
######## assume role method testing ########
provider "aws" {
  region     = "us-east-1"
}