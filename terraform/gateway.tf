
resource "aws_internet_gateway" "IGW" {
  vpc_id = aws_vpc.Main.id
}

resource "aws_nat_gateway" "NATGW" {
  allocation_id = aws_eip.natEIP.id
  subnet_id = aws_subnet.public-subnet.id
}

