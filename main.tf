resource "aws_instance" "eks" {
    ami = "ami-0f924dc71d44d23e2"
    instance_type = "t3.small"
    key_name = "gen"
    
    user_data = <<-EOF
                    #!/bin/bash
                    sudo yum install -y yum-utils
                    sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
                    sudo yum -y install terraform
                    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
                    unzip awscliv2.zip
                    sudo ./aws/install
                    EOF
                    
    tags = {
      Name = "eks"
    }
  
}
