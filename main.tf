terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.8.0"
}

provider "aws" {
  region  = var.region
  profile = var.aws_profile
}

terraform {
  backend "s3" {
    bucket         = "kavishbucket1"
    key            = "log/terraform.tfstate"
    profile        = "kavish"
    region         = "ca-central-1"
    dynamodb_table = "terraform_table"
    use_lockfile   = true
  }
}

