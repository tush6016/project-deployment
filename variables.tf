variable "aws_region" {
  description = "The AWS region to create things in."
  default     = "us-east-1"
}

variable "key_name" {
  description = "SSH keys to connect to ec2 instance"
  default     = "ironman"
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
  default     = "ami-09d3b3274b6c5d4aa"

}

variable "aws_security_group" {
  description = "Name of security group"
  default     = "eks-sec-grp"

}
