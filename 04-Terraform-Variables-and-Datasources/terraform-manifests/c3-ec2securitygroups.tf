# Create Security Group - SSH Traffic
resource "aws_security_group" "vpc-ssh" {
  name = "ssh"
  description = " testing the security group"
  ingress {
    description = " allowing port to 22 all traffice"
    from_port   = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks= ["0.0.0.0/0"] 
    }
    egress {
      description = "allowing all the traffice "
      from_port =0
      to_port = 0
      protocol= "-1"
      cidr_blocks = ["0.0.0.0/0"]
    } 
    tags={
      name = "terraform created security group "
    } 
}

# Create Security Group - Web Traffic
 resource "aws_security_group" "web-sg"{
  name= " weg-sg"
  description= "web security group"
  ingress {
    description = " allowing http traffic "
    from_port= 80 
    to_port= 80 
    protocol= "tcp"
    cidr_blocks= ["0.0.0.0/0"]
  }
  ingress {
    description = " allowing 443 request to every one "
    from_port= 443
    to_port = 443 
    protocol = "tcp"
    cidr_blocks =["0.0.0.0/0"]
  }
  egress {
    description= "allowing all traffic"
    from_port = 0 
    to_port=0 
    protocol="-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    name = " created from terraform "
    owner = "pramoth "
  }
 }