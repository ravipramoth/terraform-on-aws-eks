# Input Variables
# AWS Region
variable "aws_region" {
    description = "setting up th image region"
    type= string
    default = "us-east-1"
  
}

# AWS EC2 Instance Type
variable "aws_instance_type" {
    description = "ec2 size of the instance "
    type = string
    default = "t2.small"
    }


# AWS EC2 Instance Key Pair
variable "key_pair" {
    description = "aws key pair in the amazon instance "
    type = string
    default = "Comman_Key"
  
}


