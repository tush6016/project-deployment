variable "aws_region" {
  description = "The AWS region to create things in."
  default     = "us-east-2"
}

variable "key_name" {
  description = "SSH keys to connect to ec2 instance"
  default     = "gen"
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
  default     = "ami-0beaa649c482330f7"

}

variable "aws_vpc" {
  description = "vpc for eks-master"
  default     = "master-vpc"

}


variable "vpc-cidr" {
  default     = "172.31.0.0/16"
  description = "VPC CIDR BLOCK"
  type        = string
}

variable "Subnet_1" {
  default     = "172.31.0.0/24"
  description = "Subnet_1"
  type        = string
}

