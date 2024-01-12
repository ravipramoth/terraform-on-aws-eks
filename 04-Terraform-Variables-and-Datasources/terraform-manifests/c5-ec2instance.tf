# EC2 Instance
resource "aws_instance" "demo" {
    key_name = var.key_pair
    ami= data.aws_ami.amazon.id
    instance_type = var.aws_instance_type
    vpc_security_group_ids = [aws_security_group.vpc-ssh.id, aws_security_group.web-sg.id]
     tags = {
      Name = "Created from terraform" 
    }
}