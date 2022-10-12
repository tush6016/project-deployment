resource "aws_instance" "eks" {
    ami = "ami-0f924dc71d44d23e2"
    instance_type = "t3.small"
    key_name = "gen"
    
    user_data = <<EOF
                    #!/bin/bash
                    yum install -y yum-utils
                    yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
                    yum -y install terraform
                   EOF
    tags = {
      Name = "eks"
    }
  
}
