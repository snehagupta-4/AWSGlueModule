terraform {
  cloud {
    organization = "Capgemini-sne"

    workspaces {
      name = "DataETLPipeline"
    }
  }
}

terraform {
  required_version = ">= 1.0.0, < 2.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.51.1"
    }
  }
}
provider "aws" {
  region = var.region
}