resource "aws_internet_gateway" "Internet_Gateway" {
  depends_on = [
    aws_vpc.vpc-iti,
    aws_subnet.public-subnet,
    

  ]
  vpc_id = aws_vpc.vpc-iti.id

  tags = {
    Name = "IG"
  }
}