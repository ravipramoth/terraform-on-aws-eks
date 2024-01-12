# Terraform Output Values
output "ami" {
    description = " Printing amz image value"
    value = data.aws_ami.amazon.id
}

# EC2 Instance Public IP
output "aws_ins_public_ip" {
    description = "the public ip address is"
    value = aws_instance.demo.public_ip
  
}

# EC2 Instance Public DNS
output "aws_ins_dns" {
    description = "the public DNS "
    value = aws_instance.demo.public_dns
  
}

# EC2 instance Private IP 
output "aws_ins_private_ip" {
    description = "The private IP is"
    value = aws_instance.demo.private_ip
  
}