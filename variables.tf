variable "aws_region" {
  description = "The AWS region to create things in."
  default     = "ap-south-1"
}

variable "key_name" {
  description = "SSH keys to connect to ec2 instance"
  default     = "thor"
}

variable "instance_type" {
  description = "instance type for ec2"
  default     = "t3.small"
}

variable "tag_name" {
  description = "Tag Name of for Ec2 instance"
  default     = "eks-master"
}

variable "ami" {
  description = "AMI ID for AmazonLinux2 EC2 instance"
  default     = "ami-01216e7612243e0ef"

}

variable "aws_security_group" {
  description = "Name of security group"
  default     = "eks-sec-grp"

}
