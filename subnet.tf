resource "aws_subnet" "public-subnet" {
    
    cidr_block = "10.0.0.0/24"
    vpc_id = aws_vpc.vpc-iti.id
    map_public_ip_on_launch = true
    tags = {
    Name = "Public Subnet"}
  
}