terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "chris-corp"
    workspaces {
      name = "cloud-resume-challenege-backend"
    }
  }
  required_version = "= 1.1.9"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}