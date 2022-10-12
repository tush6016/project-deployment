resource "aws_instance" "eks-master" {
    ami = "ami-0f924dc71d44d23e2"
    instance_type = "t3.small"
    key_name = "gen"
    
                    
    tags = {
      Name = "eks"
    }
  
}
