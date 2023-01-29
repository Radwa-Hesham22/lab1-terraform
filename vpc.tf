resource "aws_vpc" "vpc-iti" {

  cidr_block = "10.0.0.0/16"
  tags       = { "Name" = "vpc-iti" }
}