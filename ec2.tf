resource "aws_instance" "instance1" {
  ami                         = "ami-00874d747dde814fa"
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.public-subnet.id
  vpc_security_group_ids            = [aws_security_group.ssh-allowed.id]
  key_name = "mykey"
  user_data                   = <<-EOF
    #!/bin/bash
    sudo apt update -y
    sudo apt install -y nginx
    sudo service nginx start
    EOF

}

