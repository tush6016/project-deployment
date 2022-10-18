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
  default     = "ami-0f924dc71d44d23e2"

}

variable "aws_security_group" {
  description = "Name of security group"
  default     = "eks-sec-grp"

}
