# Input Variables
# AWS Region
variable "aws_region" {
    description = "the deployment region"
    type = string
    default = "us-east-1"
  
}

# AWS EC2 Instance Type

variable "aws_instance_type" {
    description = "the size of the instance "
    type = string
    default = "t3.micro"
  
}

# AWS EC2 Instance Key Pair
variable "aws_key_name" {
    description = "the key pair value"
    type = string
    default = "Comman_Key"
}


# AWS EC2 Instance Type - List
variable "aws_instance_type_list" {
    description = "Aws_instance_list"
    type = list(string)
    default = ["t3.micro","t3.small","t3.large"] 
}

# AWS EC2 Instance Type - Map
variable "aws_instance_type_list_map" {
    description = "aws instance map list"
    type = map(string)
    default = {
      "qa" = "t3.micro"
      "dev" = "t3.medium"
      "prod" = "t3.large"
    }
  
}