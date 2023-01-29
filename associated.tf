resource "aws_route_table_association" "Association" {

  depends_on = [
    aws_vpc.vpc-iti,
    aws_subnet.public-subnet,
    aws_route_table.route-Table
  ]

  subnet_id = aws_subnet.public-subnet.id

  route_table_id = aws_route_table.route-Table.id
}


