
resource "aws_subnet" "public-subnet" {
  vpc_id = aws_vpc.network.id
  cidr_block = var.public_cidr

  tags = {
    Name = "public-subnet"
  }
}

resource "aws_subnet" "private-subnet" {
  vpc_id = aws_vpc.network.id
  cidr_block = var.private_cidr

  tags = {
    Name = "private-subnet"
  }
}

