resource "aws_vpc" "master-vpc" {
  cidr_block           = var.vpc-cidr
  instance_tenancy     = "default"
  enable_dns_hostnames = true
  tags = {
    Name = var.aws_vpc
  }
}


resource "aws_internet_gateway" "internet-gateway" {
  vpc_id = aws_vpc.master-vpc.id
  tags = {
    Name = "internet_gateway"
  }
}

resource "aws_subnet" "subnet-1" {
  vpc_id                  = aws_vpc.master-vpc.id
  cidr_block              = var.Subnet_1
  availability_zone       = "us-east-2a"
  map_public_ip_on_launch = true
  tags = {
    Name = "subnet-1"
  }
}

resource "aws_route_table" "public-route-table" {
  vpc_id = aws_vpc.master-vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.internet-gateway.id
  }
  tags = {
    Name = "Public Route Table"
  }
}

resource "aws_route_table_association" "public-subnet-1-route-table-association" {
  subnet_id      = aws_subnet.subnet-1.id
  route_table_id = aws_route_table.public-route-table.id
}


resource "aws_security_group" "my_security_group" {
  name        = "eks-master-sg"
  description = "security group for Ec2 instance"
  vpc_id      = aws_vpc.master-vpc.id


  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # outbound from jenkis server
  egress {
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "eks-master-sg"
  }
}


