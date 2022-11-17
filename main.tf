resource "aws_instance" "eks-master" {
  ami             = var.ami
  instance_type   = var.instance_type
  key_name        = var.key_name
  vpc_security_group_ids = [aws_security_group.my_security_group.id]
  subnet_id       = aws_subnet.subnet-1.id



  tags = {
    Name = var.tag_name
  }

}
