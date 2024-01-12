# Terraform Block
terraform {
  required_version = ">=1.5.6"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = ">= 5.31"
    }
  }
}

# Provider Block
provider "aws" {
  region = "us-east-1"
  
}

