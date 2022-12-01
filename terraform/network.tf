
resource "aws_vpc" "network" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"
  azs = slice(data.aws_availability_zones.available.names, 0, 3)

  tags = {
    Name = var.vpc_name
  }
}

