terraform {
  required_version = ">= 0.14.9"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.32"
    }
  }

  backend "s3" {
    key = "var.tf_state_bucket"
    region = "us-west-2"
  }
}