
resource "aws_route_table" "public-rt" {
  vpc_id = aws_vpc.network.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.IGW.id
  }
}

resource "aws_route_table" "private-rt" {
  vpc_id = aws_vpc.network.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.NATGW.id
  }
  
  depends_on = [
    resource.aws_nat_gateway.NATGW,
  ]
}

resource "aws_route_table_association" "public-rt-association" {
  subnet_id = aws_subnet.public-subnet.id
  route_table_id = aws_route_table.public-rt.id
}

resource "aws_route_table_association" "private-rt-association" {
  subnet_id = aws_subnet.private-rt.id
  route_table_id = aws_route_table.private-rt.id
}

