resource "aws_route_table" "route-Table" {
  depends_on = [
    aws_vpc.vpc-iti,
    aws_internet_gateway.Internet_Gateway
  ]

  vpc_id = aws_vpc.vpc-iti.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.Internet_Gateway.id
  }


  tags = {
    Name = "Route Table"
  }
}

