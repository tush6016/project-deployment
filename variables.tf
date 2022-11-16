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

variable "aws_vpc" {
  description = "vpc for eks-master"
  default     = "master-vpc"

}

#variable "aws_security_group" {
#  description = "Name of security group"
#  default     = "eks-sec-grp"

#}

variable "vpc-cidr" {
  default     = "10.0.0.0/16"
  description = "VPC CIDR BLOCK"
  type        = string
}

variable "Public_Subnet_1" {
  default     = "10.0.0.0/24"
  description = "Public_Subnet_1"
  type        = string
}

variable "Private_Subnet_1" {
  default     = "10.0.2.0/24"
  description = "Private_Subnet_1"
  type        = string
}

