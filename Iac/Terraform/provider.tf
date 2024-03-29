terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.3.0"
    }
  }

  backend "s3" {
    bucket = "terraform-state-sonarq"
    key    = "path/state/key"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}
