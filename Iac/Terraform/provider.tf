terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.3.0"
    }
  }
}

provider "aws" {
  profile = "sonarqube_prof"
  region  = "us-east-1"
}
