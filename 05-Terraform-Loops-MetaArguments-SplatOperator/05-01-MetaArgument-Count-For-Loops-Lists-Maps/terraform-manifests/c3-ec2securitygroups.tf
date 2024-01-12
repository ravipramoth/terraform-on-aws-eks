# Create Security Group - SSH Traffic
resource "aws_security_group" "vpc-ssh" {
    description = "secrity group allowing ssh 22 to all "
        ingress {
        description = "allowing the port 8080"
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
egress {
    description = "allowing all traffic to the outbound"
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
}
  tags ={
    Name = "VPC_SSH_SG"
  }
}
# Create Security Group - Web Traffic
resource "aws_security_group" "web-sg" {
    description = "sg  for 443 and 80 port"
    ingress {
        description = "allowing 443 port"
        from_port = 443
        to_port = 443
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        description = "allowing port 80"
        from_port =80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
      Name ="web-SG"
    }
  
}