# Terraform Settings Block
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      #version = "~> 3.21" # Optional but recommended in production
    }
  }
}

# Provider Block
provider "aws" {
  profile = "default" # AWS Credentials Profile configured on your local desktop terminal  $HOME/.aws/credentials
  region  = "eu-west-1"
}

# Resource Block
resource "aws_instance" "terraform_test_vm1" {
  ami           = "ami-0fef2f5dd8d0917e8" # Amazon Linux in us-east-1, update as per your region
  instance_type = "t2.micro"
 
}

{
  tags = {
    Name = terraform_test_vm1
    Env = POC
    Application = ITOP
    Owner = fulbert.soopaul@teamwork.net
    BusinessUnit = TWMU
    Schedule = OnDemand
  }
}

