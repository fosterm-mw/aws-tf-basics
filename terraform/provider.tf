
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }

    random = {
      source = "hashicorp/random"
      version = "~> 3.1.0"
    }

    kubernetes = {
      source = "hashicorp/cloudinit"
      version = "~> 2.2.0"
    }
  }
}

provider "kubernetes" {
  host = module.eks.cluster_endpoint
  cluster_ca_certificate = base64decode(module.eks.cluster_certificate_authority_data)
  load_config_file = "false"
}

provider "aws" {
  region = var.region
}

data "aws_availability_zones" "available" {}

resource "random_string" "suffix" {
  length = 8
  special = false
}

