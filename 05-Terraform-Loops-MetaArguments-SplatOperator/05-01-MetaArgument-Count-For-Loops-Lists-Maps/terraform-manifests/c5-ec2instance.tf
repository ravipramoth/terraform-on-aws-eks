# EC2 Instance
resource "aws_instance" "demo" {
    vpc_security_group_ids = [aws_security_group.vpc-ssh.id, aws_security_group.web-sg.id]
    ami = data.aws_ami.image_id.id
    instance_type = var.aws_instance_type_list[2]
    key_name = var.aws_key_name
    user_data = file("${path.module}/app1-install.sh")
    count = 2
    tags = {
        Name = "demo-${count.index}"
    }
  
}