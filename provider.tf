terraform {
  required_version = "~> 1.5"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.15"
    }
  }

  backend "s3" {
    bucket = "remote-state-storage"
    key = "roboshop/terraform.tfstate"
    region = "us-east-1"

    dynamodb_table = "remote-state-lock"
}
}

provider "aws" {
  region = "us-east-1"
}

provider "aws" {
  region = "us-west-1"
  alias  = "west"
}