
resource "aws_vpc" "test-vpc" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"
}

